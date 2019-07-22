################################################################################
##  File:  Update-DockerImages.ps1
##  Team:  ReleaseManagement
##  Desc:  Pull some standard docker images.
##         Must be run after docker is installed.
################################################################################

function DockerPull {
    Param ([string]$image)

    Write-Host Installing $image ...
    docker pull $image

    if (!$?) {
      echo "Docker pull failed with a non-zero exit code"
      exit 1
    }
}

DockerPull microsoft/windowsservercore:1803
DockerPull microsoft/nanoserver:1803
DockerPull microsoft/aspnetcore-build:2.0-nanoserver-1803
DockerPull microsoft/aspnet:4.7.2-windowsservercore-1803
DockerPull microsoft/dotnet-framework:4.7.2-sdk-windowsservercore-1803


# Adding description of the software to Markdown

$SoftwareName = "Docker images"

$Description = @"
The following container images have been cached:
"@

Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description

Add-ContentToMarkdown -Content $(docker images --digests --format "* {{.Repository}}:{{.Tag}} (Digest: {{.Digest}})")