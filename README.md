# kiosk-setup-script

## ShellLauncher Setup
### Configuration
Edit `shellLauncherConfig.xml`.
Specify the shell you want to launch instead of `explorer.exe`.

```xml
<Shell Shell="C:\Windows\System32\notepad.exe" V2:AppType="Desktop" V2:AllAppsFullScreen="true">
```
### Enable
Run `enableKiosk.bat`.

### Disable
Run `disableKiosk.bat`. 

## UWF Setup
### Initial Configuration
```bat
:: Enable write protection on the C: drive
uwfmgr volume protect c:

:: Set overlay size to 2GB
uwfmgr overlay set-size 2048

:: Set warning threshold to 1GB
uwfmgr overlay set-warningthreshold 1024

:: Set critical threshold to 1.5GB
uwfmgr overlay set-criticalthreshold 1536
```

### Enable
```bat
uwfmgr filter enable
```

### Disable
```bat
uwfmgr filter disable
```

### Reference
```bat
:: View configuration values
uwfmgr get-config
uwfmgr volume get-config c:

:: Filter usage
uwfmgr overlay get-consumption

:: Available space for filter
uwfmgr overlay get-availablespace
```
