################################################################################
##  File:  Install-JavaTools.ps1
##  Team:  CI-X
##  Desc:  Install various JDKs and java tools
################################################################################

#Installing Both x86 and x64 versions of Java
choco install jdk8 -params "both=true" -y

choco install jdk11 -y
choco install ant -y
choco install maven -y
choco install gradle -y

Import-Module -Name ImageHelpers -Force

$currentPath = Get-MachinePath

$pathSegments = $currentPath.Split(';')
$newPathSegments = @()

foreach ($pathSegment in $pathSegments)
{
    if($pathSegment -notlike '*java*')
    {
        $newPathSegments += $pathSegment
    }
}

$java8Installs = Get-ChildItem -Path 'C:\Program Files\Java' -Filter 'jdk*8*' | Sort-Object -Property Name -Descending | Select-Object -First 1
$latestJava8Install = $java8Installs.FullName;

$java11Installs = Get-ChildItem -Path 'C:\Program Files\Java' -Filter 'jdk*11*' | Sort-Object -Property Name -Descending | Select-Object -First 1
$latestJava11Install = $java11Installs.FullName;

$newPath = [string]::Join(';', $newPathSegments)
$newPath = $latestJava8Install + '\bin;' + $newPath

Set-MachinePath -NewPath $newPath

setx JAVA_HOME $latestJava8Install /M
setx JAVA_HOME_8_X64 $latestJava8Install /M
setx JAVA_HOME_11_X64 $latestJava11Install /M

#Move maven variables to Machine, they may not be in the environment for this script so we need to read them from the registry.
$userSid = (Get-WmiObject win32_useraccount -Filter "name = '$env:USERNAME' AND domain = '$env:USERDOMAIN'").SID
$userEnvironmentKey = 'Registry::HKEY_USERS\' + $userSid + '\Environment'

$m2_home = (Get-ItemProperty -Path $userEnvironmentKey -Name M2_HOME).M2_HOME
$m2 = $m2_home + '\bin'
$maven_opts = '-Xms256m'

$m2_repo = 'C:\ProgramData\m2'
New-Item -Path $m2_repo -ItemType Directory -Force

setx M2 $m2 /M
setx M2_HOME $m2_home /M
setx M2_REPO $m2_repo /M
setx MAVEN_OPTS $maven_opts /M



## Downloading cobertura jars
$uri = 'https://ayera.dl.sourceforge.net/project/cobertura/cobertura/2.1.1/cobertura-2.1.1-bin.zip'
$coberturaPath = "C:\cobertura-2.1.1"

cd $env:TEMP

Invoke-WebRequest -UseBasicParsing -Uri $uri -OutFile cobertura.zip

# Expand the zip
Expand-Archive -Path cobertura.zip -DestinationPath "C:\" -Force

# Deleting zip folder
Remove-Item -Recurse -Force cobertura.zip

setx COBERTURA_HOME $coberturaPath /M