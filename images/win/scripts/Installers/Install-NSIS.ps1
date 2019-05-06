################################################################################
##  File:  Install-NSIS.ps1
##  Team:  CI-X
##  Desc:  Install NSIS
################################################################################

choco install nsis -y

$NsisPath = "${env:ProgramFiles(x86)}\NSIS\"
Add-MachinePathItem $NsisPath
$env:Path = Get-MachinePath
