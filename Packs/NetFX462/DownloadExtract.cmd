@echo OFF
echo.-------------------------------------------------------------------------------
echo.正在下载 MSU 文件并解压指定 CAB 文件
echo.-------------------------------------------------------------------------------

SetLocal EnableExtensions EnableDelayedExpansion

cd /d "%~dp0\"

set "DownloadFileName=Windows10.0-KB3151900-x86.msu"
set "DownloadURI=http://download.microsoft.com/download/b/d/4/bd47ee8c-982f-42bd-bc88-90e35461b14c/enu_NETFX/amd64_windows10_0-kb3151900-x86_cab/windows10.0-kb3151900-x86.cab"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, "Microsoft-Windows-NetFx462-Package~31bf3856ad364e35~x86.cab"

set "DownloadFileName=Windows10.0-KB3151900-x64.msu"
set "DownloadURI=http://download.microsoft.com/download/b/d/4/bd47ee8c-982f-42bd-bc88-90e35461b14c/enu_NETFX/amd64_windows10_0-kb3151900-x64_cab/windows10.0-kb3151900-x64.cab"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, "Microsoft-Windows-NetFx462-Package~31bf3856ad364e35~amd64.cab"

set "DownloadFileName=Windows10.0-KB4051600-x86.msu"
set "DownloadURI=http://download.windowsupdate.com/d/msdownload/update/software/updt/2017/11/windows10.0-kb4051600-x86_9e46a5873a7589301e7190860ce1f67d74178554.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, "!DownloadFileName:~0,-4!.cab"

set "DownloadFileName=Windows10.0-KB4051600-x64.msu"
set "DownloadURI=http://download.windowsupdate.com/d/msdownload/update/software/updt/2017/11/windows10.0-kb4051600-x64_faf3fa1332ac8e6337718ae3f19146220d62acdd.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, "!DownloadFileName:~0,-4!.cab"

set "DownloadFileName=Windows10.0-KB4054057-x86.msu"
set "DownloadURI=http://download.windowsupdate.com/c/msdownload/update/software/updt/2017/11/windows10.0-kb4054057-x86_fdee952180947232533c70a661ff3f448ae8f90c.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, "!DownloadFileName:~0,-4!.cab"

set "DownloadFileName=Windows10.0-KB4054057-x64.msu"
set "DownloadURI=http://download.windowsupdate.com/c/msdownload/update/software/updt/2017/11/windows10.0-kb4054057-x64_340ce9e9abb9b1df4ae77dc237aaad398e09652d.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, "!DownloadFileName:~0,-4!.cab"
echo.
echo.

pause
exit

::-------------------------------------------------------------------------------------------
:: 下载 MSU 文件并解压指定 CAB 文件模组
:: 输入参数 [ %~1 ：下载 URI、%~2 ：包路径和文件名称
::            %~3 ：包路径、%~4 ：下载文件名称]
::            %~5 ：最终文件名称]
::-------------------------------------------------------------------------------------------
:DownloadExtractingSpecificFile
if not exist "%~5" (
	rem @start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command Invoke-WebRequest "%~1" -OutFile "%~2"
	rem @start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command Start-BitsTransfer -Source "%~1" -Destination "%~2"
	@start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('%~1', '%~2')"
	rem @start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('%~1', File.SetLastWriteTime('%~2', DateTime ) )"
	rem @start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command Start-BitsTransfer -Source '%~3\*.txt' -Destination '%~3\' -TransferType Download
	rem @start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command "Import-CSV filelist.txt | Start-BitsTransfer"

	:: 从 MSU 文件中解压指定文件。
	if exist "%~2" (
		set "file=%~2"
		set "ext=!file:~-3!"
		rem "%Zip%" e "%~2" "-o%~3\" "%~4.cab" -r
		rem PowerShell.exe -Command "Expand-Archive -Force '%~2' '%~3'"
		if "!ext!" equ "msu" (
			expand "%~2" -F:%~4.cab "%~3"
			call :RemoveFile "%~2"
		)
		ren "%~4.cab" "%~5"
	)
) else (
	echo.
	echo %~5 文件已存在。
)

goto :EOF
::-------------------------------------------------------------------------------------------

::-------------------------------------------------------------------------------------------
:: 从 Web 下载某些文件模组
:: 输入参数 [ %~1 ：下载 URI、%~2 ：包路径和文件名称
::            %~3 ：包路径、%~4 ：下载文件名称]
::-------------------------------------------------------------------------------------------
:DownloadFile
if not exist "%~2" (
	rem @start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command Invoke-WebRequest "%~1" -OutFile "%~2"
	@start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command "(New-Object System.Net.WebClient).DownloadFile('%~1', '%~2')"
	rem @start "正在下载 %~4 文件……" /wait /B PowerShell.exe -Command Start-BitsTransfer -Source %~3\*.txt -Destination %~3\ -TransferType Download
) else (
	echo.
	echo %~4 文件已存在。
)

goto :EOF
::-------------------------------------------------------------------------------------------

::-------------------------------------------------------------------------------------------
:: 删除文件模组
:: 输入参数 [ %~1 ：文件名称 ]
::-------------------------------------------------------------------------------------------
:RemoveFile

if exist "%~1" del /f /q "%~1" >nul

goto :EOF
::-------------------------------------------------------------------------------------------

