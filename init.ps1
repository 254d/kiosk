Set-Location (Split-Path $MyInvocation.MyCommand.Path -parent)

if (-not(Test-Path .\PsTools)) {
  $result = Invoke-WebRequest -Uri https://download.sysinternals.com/files/PSTools.zip -OutFile PSTools.zip
  Expand-Archive -Path PSTools.zip -DestinationPath PSTools
  Remove-Item -Path PSTools.zip
}
