Set-Location (Split-Path $MyInvocation.MyCommand.Path -parent)

$namespaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.ShellLauncher = $null
Set-CimInstance -CimInstance $obj

pause
