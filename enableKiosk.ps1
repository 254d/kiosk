Set-Location (Split-Path $MyInvocation.MyCommand.Path -parent)

$shellLauncherConfiguration = Get-Content shellLauncherConfig.xml
$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.ShellLauncher = [System.Net.WebUtility]::HtmlEncode($shellLauncherConfiguration)
$obj = Set-CimInstance -CimInstance $obj

pause
