####################################################################################
##  File:  Install-DACFx.ps1
##  Team:  CI-Platform
##  Desc:  Install SQL Server® Data-Tier Application Framework (DACFx) for Windows
####################################################################################

Import-Module -Name ImageHelpers -Force

$exitcode = Install-MSI -MsiUrl "https://download.microsoft.com/download/9/2/2/9228AAC2-90D1-4F48-B423-AF345296C7DD/EN/x64/DacFramework.msi" -MsiName "DacFramework.msi"

exit $exitcode
