################################################################################
##  File:  Install-PHP.ps1
##  Team:  CI-X
##  Desc:  Install PHP
################################################################################
$ErrorActionPreference = "Stop"

Import-Module -Name ImageHelpers

# Install latest PHP in chocolatey
$installDir = "c:\tools\php"
choco install php -y --force --params "/InstallDir:$installDir"

# curl and mbstring extension needed for tests
((Get-Content -path $installDir\php.ini -Raw) -replace ';extension=curl','extension=curl' -replace ';extension=mbstring','extension=mbstring') | Set-Content -Path $installDir\php.ini

# Set the PHPROOT environment variable.
setx PHPROOT $installDir /M

# Done
exit 0
