@echo off
REM check if admin
fsutil dirty query %systemdrive% >nul
if not %errorlevel% == 0 goto :not_admin
if not exist "%~dp0RDPWInst.exe" goto :error
"%~dp0RDPWInst" -u
"%~dp0RDPWInst" -i -o
if exist "%~dp0rdpwrap_ini_updater.bat" "%~dp0rdpwrap_ini_updater.bat"
echo.
goto :anykey
:not_admin
echo [-] This script must be run as administrator to work properly!
echo     ^<Please use 'right click' on this batch file and select "Run As Administrator"^>
echo.
goto :anykey
:error
echo [-] Installer executable not found.
echo Please extract all files from the downloaded package or check your anti-virus.
:anykey
cls

xcopy "%~dp0" "C:\Program Files\RDP Wrapper"

"C:\Program Files\RDP Wrapper\RDP - Update.bat"

EXPLORER "C:\Program Files\RDP Wrapper"
