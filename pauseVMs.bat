@echo off
echo "Pausing your VMs because VMWare can't be bothered..."

setlocal enabledelayedexpansion

rem Check the system architecture
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set "VMwarePath=C:\Program Files (x86)\VMware\VMware Workstation"
) else (
    set "VMwarePath=C:\Program Files\VMware\VMware Workstation"
)

rem Add VMware path to the system PATH variable
set "Path=!Path!;%VMwarePath%"

FOR /F "delims=*" %%v IN ('vmrun.exe list') DO CALL :SuspendVM "%%v"

Echo "FIN"
ENDLOCAL

goto :EOF


:SuspendVM
IF "%~1x"==x GOTO :EOF
if not exist "%~1" goto :EOF

echo Suspending VM %1

CALL vmrun.exe suspend "%~1"

:: I don't trust it to not wait properly
timeout /t 3 /nobreak >nul

GOTO :EOF
:EOF
