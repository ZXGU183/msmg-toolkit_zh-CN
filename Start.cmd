@echo off

setlocal

if "%PROCESSOR_ARCHITECTURE%" equ "x86" set "Arch=x86"
if "%PROCESSOR_ARCHITECTURE%" equ "AMD64" set "Arch=x64"

set "ToolKitCmd=ToolKit_en.cmd"

for /f "tokens=6 delims= " %%o in ('DISM /Online /English /Get-Intl ^| findstr /i /C:"Default system UI language"') do (set "HostUILanguage=%%o")

if "%HostUILanguage%" NEQ "zh-CN" set "ToolKitCmd=ToolKit.cmd"

echo Using ToolKit: %ToolKitCmd%

start /b "ToolKit - TrustedInstaller" "%~dp0Bin\%Arch%\NSudo.exe" -U:T -P:E "%~dp0%ToolKitCmd%"

endlocal
exit
