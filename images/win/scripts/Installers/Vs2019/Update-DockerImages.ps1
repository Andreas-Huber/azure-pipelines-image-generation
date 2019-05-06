################################################################################
##  File:  Update-DockerImages.ps1
##  Team:  ReleaseManagement
##  Desc:  Pull some standard docker images.
##         Must be run after docker is installed.
################################################################################

function DockerPull {
    Param ([string]$image)

    Write-Host Installing $image ...
    $j = Start-Job -ScriptBlock { docker pull $args[0] } -ArgumentList $image
    while ( $j.JobStateInfo.state -ne "Completed" -And $j.JobStateInfo.state -ne "Failed" ) {
      Write-Host $j.JobStateInfo.state
      Start-Sleep 10
    }

    $results = Receive-Job -Job $j
    $results
}

DockerPull microsoft/windowsservercore
DockerPull microsoft/nanoserver
DockerPull microsoft/aspnetcore-build:1.0-2.0
DockerPull microsoft/aspnet
DockerPull microsoft/dotnet-framework


# Adding description of the software to Markdown

$SoftwareName = "Docker images"

$Description = @"
The following container images have been cached:
"@

Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description

Add-ContentToMarkdown -Content $(docker images --digests --format "* {{.Repository}}@{{.Digest}}")