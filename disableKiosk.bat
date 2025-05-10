@echo off

cd /d %~dp0

powershell.exe -ExecutionPolicy Bypass -Command %~dp0init.ps1

whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
    @powershell start-process %~0 -verb runas
    exit
)

%~dp0PSTools\PsExec.exe /accepteula -i -s powershell.exe -ExecutionPolicy Bypass -Command %~dp0disableKiosk.ps1

shutdown /r /t 0
