################################################################################
##  File:  Install-VS2017-BuildTools.ps1
##  Team:  CI-Build
##  Desc:  Install Visual Studio Build Tools 2017
################################################################################

Function InstallVS
{
  Param
  (
    [String]$WorkLoads,
    [String]$Sku,
    [String] $VSBootstrapperURL
  )

  $exitCode = -1

  try
  {
    Write-Host "Downloading Bootstrapper ..."
    Invoke-WebRequest -Uri $VSBootstrapperURL -OutFile "${env:Temp}\vs_$Sku.exe"

    $FilePath = "${env:Temp}\vs_$Sku.exe"
    $Arguments = ('/c', $FilePath, $WorkLoads, '--passive', '--norestart', '--wait', '--nocache' )

    Write-Host "Starting Install ..."
    $process = Start-Process -FilePath cmd.exe -ArgumentList $Arguments -Wait -PassThru
    $exitCode = $process.ExitCode

    if ($exitCode -eq 0 -or $exitCode -eq 3010)
    {
      Write-Host -Object 'Installation successful'
      return $exitCode
    }
    else
    {
      Write-Host -Object "Non zero exit code returned by the installation process : $exitCode."

      # this wont work because of log size limitation in extension manager
      # Get-Content $customLogFilePath | Write-Host

      exit $exitCode
    }
  }
  catch
  {
    Write-Host -Object "Failed to install Visual Studio. Check the logs for details in $customLogFilePath"
    Write-Host -Object $_.Exception.Message
    exit -1
  }
}

$WorkLoads = '--allWorkloads --includeRecommended '

$Sku = 'BuildTools'
$VSBootstrapperURL = 'https://aka.ms/vs/15/release/vs_BuildTools.exe'

$ErrorActionPreference = 'Stop'

# Install VS
$exitCode = InstallVS -WorkLoads $WorkLoads -Sku $Sku -VSBootstrapperURL $VSBootstrapperURL

# Find the version of VS installed for this instance
# Only supports a single instance
$vsProgramData = Get-Item -Path "C:\ProgramData\Microsoft\VisualStudio\Packages\_Instances"
$instanceFolders = Get-ChildItem -Path $vsProgramData.FullName

if($instanceFolders -is [array])
{
    Write-Host "More than one instance installed"
    exit 1
}

$catalogContent = Get-Content -Path ($instanceFolders.FullName + '\catalog.json')
$catalog = $catalogContent | ConvertFrom-Json
$version = $catalog.info.id
Write-Host "Visual Studio version" $version "installed"

# Updating content of MachineState.json file to disable autoupdate of VSIX extensions
$newContent = '{"Extensions":[{"Key":"1e906ff5-9da8-4091-a299-5c253c55fdc9","Value":{"ShouldAutoUpdate":false}},{"Key":"Microsoft.VisualStudio.Web.AzureFunctions","Value":{"ShouldAutoUpdate":false}}],"ShouldAutoUpdate":false,"ShouldCheckForUpdates":false}'
Set-Content -Path "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\Common7\IDE\Extensions\MachineState.json" -Value $newContent


# Adding description of the software to Markdown

$SoftwareName = "Visual Studio 2017 BuildTools"

$Description = @"
_Version:_ $version<br/>
_Location:_ C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools

The following workloads including required and recommended components are installed with Visual Studio 2017:

* Universal Windows Platform development
* .NET desktop development
* Desktop development with C++
* ASP.NET and web development
* Azure development
* Node.js development
* Data storage and processing
* Data science and analytical applications
* Game development with Unity
* Linux development with C++
* Game development with C++
* Mobile development with C++
* Office/SharePoint development
* Mobile development with .NET
* .NET Core cross-platform development
* Visual Studio extension development
* Python development *
* Mobile development with JavaScript

In addition the following optional components are installed:

"@

Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description

# Adding explicitly added Workloads details to markdown by parsing $Workloads
Add-ContentToMarkdown -Content $($WorkLoads.Split('--') | % { if( ($_.Split(" "))[0] -like "add") { "* " +($_.Split(" "))[1] }  } )



exit $exitCode