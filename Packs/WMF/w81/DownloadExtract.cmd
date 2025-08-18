@echo OFF
echo.-------------------------------------------------------------------------------
echo.正在下载 MSU 文件并解压指定 CAB 文件
echo.-------------------------------------------------------------------------------

SetLocal EnableExtensions EnableDelayedExpansion

cd /d "%~dp0\"

set "DownloadFileName=Windows8.1-KB3191564-x64.msu"
set "Extract文件名称=WindowsBlue-KB3191564-x64.cab"
set "DownloadURI=http://download.windowsupdate.com/d/msdownload/update/software/updt/2017/03/windowsblue-kb3191564-x64_91d95a0ca035587d4c1babe491f51e06a1529843.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, !Extract文件名称:~0,-4!

set "DownloadFileName=Windows8.1-KB3191564-x86.msu"
set "Extract文件名称=WindowsBlue-KB3191564-x86.cab"
set "DownloadURI=http://download.windowsupdate.com/d/msdownload/update/software/updt/2017/03/windowsblue-kb3191564-x86_821ec3c54602311f44caa4831859eac6f1dd0350.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, !DownloadFileName:~0,-4!, !Extract文件名称:~0,-4!
echo.
echo.

pause
exit

::-------------------------------------------------------------------------------------------
:: 下载 MSU 文件并解压指定 CAB 文件模组
:: 输入参数 [ %~1 ：下载 URI、%~2 ：包路径和文件名称
::            %~3 ：包路径、%~4 ：下载文件名称
::            %~5 ：解压文件名称]
::-------------------------------------------------------------------------------------------
:DownloadExtractingSpecificFile
if not exist "%~4.cab" (
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
			expand "%~2" -F:%~5.cab "%~3"
		)
		call :RemoveFile "%~2"
	)
) else (
	echo.
	echo %~4.cab 文件已存在。
)

if exist "%cd%\%~5.cab" ren "%cd%\%~5.cab" "%~4.cab"

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

