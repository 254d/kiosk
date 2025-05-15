@echo off

cd /d %~dp0

whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
    @powershell start-process %~0 -verb runas
    exit
)

uwfmgr filter enable

pause

shutdown /r /t 0
