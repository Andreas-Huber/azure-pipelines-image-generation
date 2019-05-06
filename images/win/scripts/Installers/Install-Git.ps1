################################################################################
##  File:  Install-Git.ps1
##  Team:  CI-Platform
##  Desc:  Install Git for Windows
################################################################################

Import-Module -Name ImageHelpers

# Install the latest version of Git which is bundled with Git LFS.
# See https://chocolatey.org/packages/git
choco install git -y --package-parameters="/GitAndUnixToolsOnPath /WindowsTerminal /NoShellIntegration"

Add-MachinePathItem "C:\Program Files\Git\mingw64\bin"
Add-MachinePathItem "C:\Program Files\Git\usr\bin"
Add-MachinePathItem "C:\Program Files\Git\bin"
exit 0
