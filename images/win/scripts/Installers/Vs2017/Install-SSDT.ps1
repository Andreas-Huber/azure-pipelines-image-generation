################################################################################
##  File:  Install-SSDT.ps1
##  Team:  CI-Platform
##  Desc:  Install SQL Server Data Tools for Windows
################################################################################

Import-Module -Name ImageHelpers -Force

#SSDT for Visual Studio 2017 (15.8.0)
$InstallerURI = 'https://download.microsoft.com/download/3/5/A/35A485C7-E84E-410F-8334-C5E10377FFC0/SSDT-Setup-ENU.exe'
$InstallerName = 'SSDT-Setup-ENU.exe'
$logFilePath = "$env:TEMP\ssdtlog.txt"
$ArgumentList = ('/install', 'INSTALLALL', '/passive', '/norestart', "/log `"$logFilePath`"")

$exitCode = Install-EXE -Url $InstallerURI -Name $InstallerName -ArgumentList $ArgumentList

if($exitCode -ne 0 -and $exitCode -ne 3010)
{
    Write-Host "******** SSDT SETUP LOG START ********"
    Write-Host $(Get-Content $logFilePath | Out-String)
    Write-Host "******** SSDT SETUP LOG END ********"
}

exit $exitCode