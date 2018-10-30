################################################################################
##  File:  Install-DotnetSDK.ps1
##  Team:  CI-Build
##  Desc:  Install all released versions of the dotnet sdk and populate package
##         cache.  Should run after VS and Node
################################################################################

# ensure temp
New-Item -Path C:\Temp -Force -ItemType Directory

[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor "Tls12"

Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/dotnet/core/master/release-notes/releases.json' -UseBasicParsing -OutFile 'dotnet-releases.json'
$dotnetReleases = Get-Content -Path 'dotnet-releases.json' | ConvertFrom-Json

#Filtering dotnet sdk and runtime versions which does not have "-" in their name, based on naming pattern they are either preview or rc versions
$dotnetReleases = $dotnetReleases | Where-Object {!$_."version-sdk".Contains('-') } | Sort-Object {[Version] $_."version-sdk"}

Invoke-WebRequest -Uri 'https://dot.net/v1/dotnet-install.ps1' -UseBasicParsing -OutFile 'dotnet-install.ps1'

$templates = @(
    'console',
    'mstest',
    'xunit',
    'web',
    'mvc',
    'webapi'
)

$dotnetReleases | ForEach-Object {
    $release = $_
    $sdkVersion = $release.'version-sdk'
    if(!(Test-Path -Path "C:\Program Files\dotnet\sdk\$sdkVersion")) {
        Write-Host "Installing dotnet $sdkVersion"
        .\dotnet-install.ps1 -Architecture x64 -Version $sdkVersion -InstallDir $(Join-Path -Path $env:ProgramFiles -ChildPath 'dotnet')
        # warm up dotnet for first time experience
        $templates | ForEach-Object {
            $template = $_
            $projectPath = Join-Path -Path C:\temp -ChildPath $template
            New-Item -Path $projectPath -Force -ItemType Directory
            Push-Location -Path $projectPath
            & $env:ProgramFiles\dotnet\dotnet.exe new $template
            Pop-Location
            Remove-Item $projectPath -Force -Recurse
        }
    }
    else {
        Write-Host "Sdk version $sdkVersion already installed"
    }
}

Add-MachinePathItem "C:\Program Files\dotnet"