@echo OFF
echo.-------------------------------------------------------------------------------
echo.正在下载 MSU 文件并解压指定 CAB 文件
echo.-------------------------------------------------------------------------------

SetLocal EnableExtensions EnableDelayedExpansion

cd /d "%~dp0\"

set "DownloadFileName=Windows6.1-KB968211-x64-RefreshPkg.msu"
set "DownloadURI=http://web.archive.org/web/20181208200645if_/https://download.microsoft.com/download/B/9/B/B9BED058-8669-490E-BA61-D502E4E8BEB1/Windows6.1-KB968211-x64-RefreshPkg.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, Microsoft-Windows-MediaFeaturePack-OOB-Package~31bf3856ad364e35~amd64~~6.1.7600.16385.cab

set "DownloadFileName=Windows6.1-KB968211-x86-RefreshPkg.msu"
set "DownloadURI=http://web.archive.org/web/20170610195036if_/https://download.microsoft.com/download/B/9/B/B9BED058-8669-490E-BA61-D502E4E8BEB1/Windows6.1-KB968211-x86-RefreshPkg.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, Microsoft-Windows-MediaFeaturePack-OOB-Package~31bf3856ad364e35~x86~~6.1.7600.16385.cab

set "DownloadFileName=Windows6.1-KB968212-x64-RefreshPkg.msu"
set "DownloadURI=https://raw.githubusercontent.com/stdin82/htfx/master/W7601/Windows6.1-KB968212-x64-RefreshPkg.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, Microsoft-Windows-Media-Format-OOB-Package~31bf3856ad364e35~amd64~~6.1.7600.16385.cab

set "DownloadFileName=Windows6.1-KB968212-x86-RefreshPkg.msu"
set "DownloadURI=https://raw.githubusercontent.com/stdin82/htfx/master/W7601/Windows6.1-KB968212-x86-RefreshPkg.msu"
call :DownloadExtractingSpecificFile !DownloadURI!, %cd%\!DownloadFileName!, %cd%, Microsoft-Windows-Media-Format-OOB-Package~31bf3856ad364e35~x86~~6.1.7600.16385.cab

echo.
echo.

pause
exit

::-------------------------------------------------------------------------------------------
:: 下载 MSU 文件并解压指定 CAB 文件模组
:: 输入参数 [ %~1 ：下载 URI、%~2 ：包路径和文件名称
::            %~3 ：包路径、%~4 ：下载文件名称]
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
			expand "%~2" -F:%~4.cab "%~3"
		)
		call :RemoveFile "%~2"
	)
) else (
	echo.
	echo %~4.cab 文件已存在。
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

