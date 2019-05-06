################################################################################
##  File:  Validate-DotnetSDK.ps1
##  Team:  CI-Build
##  Desc:  Validate dotnet
################################################################################

if(Get-Command -Name 'dotnet')
{
    Write-Host "dotnet $(dotnet --version) on path"
}
else
{
    Write-Host "dotnet is not on path"
    exit 1
}

$CurrentPath = Get-MachinePath
if ($CurrentPath -Like "*C:\Users\VssAdministrator\.dotnet\tools*")
{
    Write-Host ".Net Core global tool path (C:\Users\VssAdministrator\.dotnet\tools) is added to system path envrionment variable."
}
else
{
    Write-Host ".Net Core global tool path is not on system path"
    exit 1
}

# Adding description of the software to Markdown
$SoftwareName = ".NET Core"

$Description = @"
The following runtimes and SDKs are installed:

_Environment:_
* PATH: contains location of dotnet.exe

_SDK:_
"@

Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description

$SdkList =(Get-ChildItem "C:\Program Files\dotnet\sdk") | Where { $_.Name -match "[0-9].*" } | Sort-Object -Descending | % { "* $($_.Name) $($_.FullName)" }

Add-ContentToMarkdown -Content $SdkList



$Runtimes = @"

_Runtime:_
"@

Add-ContentToMarkdown -Content $Runtimes

$RuntimeList =(Get-ChildItem "C:\Program Files\dotnet\shared\Microsoft.NETCore.App") | Where { $_.Name -match "[0-9].*" } | Sort-Object -Descending | % { "* $($_.Name) $($_.FullName)" }

Add-ContentToMarkdown -Content $RuntimeList

