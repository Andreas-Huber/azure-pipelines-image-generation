################################################################################
##  File:  Install-PowershellCore.ps1
##  Team:  CI-Platform
##  Desc:  Install PowerShell Core
################################################################################

Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI -Quiet"
