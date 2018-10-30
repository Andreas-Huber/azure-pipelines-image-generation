################################################################################
##  File:  Install-Docker.ps1
##  Team:  CI-Platform
##  Desc:  Install Docker.
##         Must be an independent step becuase it requires a restart before we
##         can continue.
################################################################################

Set-PSRepository -InstallationPolicy Trusted -Name PSGallery
Write-Host "Install-Module DockerProvider"
Install-Module DockerMsftProvider -Force

Write-Host "Install-Package Docker"
Install-Package -Name docker -ProviderName DockerMsftProvider -RequiredVersion 18.03 -Force
Start-Service docker

choco install docker-compose -y
