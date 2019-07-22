# Azure Pipelines Hosted Windows 2019 with VS2019 image

The following software is installed on machines in the Azure Pipelines **Hosted Windows 2019 with VS2019** pool.

Components marked with **\*** have been upgraded since the previous version of the image.


## Chocolatey

_Version:_ 0.10.15<br/>
_Environment:_
* PATH: contains location for choco.exe

## Docker

_Version:_ 18.09.7<br/>
_Environment:_
* PATH: contains location of docker.exe

## Docker-compose

_Version:_ 1.24.0<br/>
_Environment:_
* PATH: contains location of docker-compose.exe

## Powershell Core

_Version:_ 6.2.1
<br/>

## Docker images

The following container images have been cached:
* mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019 (Digest: sha256:8c850cb553f66ef7ca94ecf53f6bfe92a3f4bdaf990f9172a1aabdf21e8cac74)
* mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-ltsc2019 (Digest: sha256:264b6fc7f4842c42725fa78c3deedf360b0288c5dbf937364553dccef3a6df86)
* mcr.microsoft.com/windows/servercore:ltsc2019 (Digest: sha256:3227eebe00f79b326c1c672190940d8ba9d552f0e40cc4b9135995e46ba1e588)
* mcr.microsoft.com/windows/nanoserver:1809 (Digest: sha256:f4e90ea2a4fa220edd3db4ab1e22b287c3a7bd9ee2d07c71f92f126b42161634)
* microsoft/aspnetcore-build:1.0-2.0 (Digest: sha256:9ecc7c5a8a7a11dca5f08c860165646cb30d084606360a3a72b9cbe447241c0c)

## Visual Studio 2019 Enterprise

_Version:_ VisualStudio/16.1.6+29102.190<br/>
_Location:_ C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise

The following workloads and components are installed with Visual Studio 2019:
* Component.Dotfuscator
* Component.Linux.CMake
* Component.UnityEngine.x64
* Component.UnityEngine.x86
* Component.Unreal.Android
* Microsoft.Component.Azure.DataLake.Tools
* Microsoft.Component.CookiecutterTools
* Microsoft.Component.PythonTools.Miniconda
* Microsoft.Component.PythonTools.Web
* Microsoft.Component.VC.Runtime.UCRTSDK
* Microsoft.Net.ComponentGroup.4.6.2.DeveloperTools
* Microsoft.Net.ComponentGroup.4.7.1.DeveloperTools
* Microsoft.Net.ComponentGroup.4.7.DeveloperTools
* Microsoft.VisualStudio.Component.AspNet45
* Microsoft.VisualStudio.Component.Azure.Kubernetes.Tools
* Microsoft.VisualStudio.Component.Azure.MobileAppsSdk
* Microsoft.VisualStudio.Component.Azure.ServiceFabric.Tools
* Microsoft.VisualStudio.Component.Azure.Storage.AzCopy
* Microsoft.VisualStudio.Component.Debugger.JustInTime
* Microsoft.VisualStudio.Component.DslTools
* Microsoft.VisualStudio.Component.EntityFramework
* Microsoft.VisualStudio.Component.FSharp.Desktop
* Microsoft.VisualStudio.Component.LinqToSql
* Microsoft.VisualStudio.Component.PortableLibrary
* Microsoft.VisualStudio.Component.TeamOffice
* Microsoft.VisualStudio.Component.TestTools.CodedUITest
* Microsoft.VisualStudio.Component.TestTools.WebLoadTest
* Microsoft.VisualStudio.Component.UWP.VC.ARM64
* Microsoft.VisualStudio.Component.VC.ATL.ARM
* Microsoft.VisualStudio.Component.VC.ATLMFC
* Microsoft.VisualStudio.Component.VC.ATLMFC.Spectre
* Microsoft.VisualStudio.Component.VC.CLI.Support
* Microsoft.VisualStudio.Component.VC.CMake.Project
* Microsoft.VisualStudio.Component.VC.DiagnosticTools
* Microsoft.VisualStudio.Component.VC.MFC.ARM
* Microsoft.VisualStudio.Component.VC.MFC.ARM.Spectre
* Microsoft.VisualStudio.Component.VC.MFC.ARM64
* Microsoft.VisualStudio.Component.VC.MFC.ARM64.Spectre
* Microsoft.VisualStudio.Component.VC.Runtimes.ARM.Spectre
* Microsoft.VisualStudio.Component.VC.Runtimes.ARM64.Spectre
* Microsoft.VisualStudio.Component.VC.Runtimes.x86.x64.Spectre
* Microsoft.VisualStudio.Component.VC.TestAdapterForBoostTest
* Microsoft.VisualStudio.Component.VC.TestAdapterForGoogleTest
* Microsoft.VisualStudio.Component.VC.v141
* Microsoft.VisualStudio.Component.Windows10SDK.16299
* Microsoft.VisualStudio.Component.Windows10SDK.17134
* Microsoft.VisualStudio.Component.Windows10SDK.17763
* Microsoft.VisualStudio.Component.Windows10SDK.18362
* Microsoft.VisualStudio.ComponentGroup.Azure.CloudServices
* Microsoft.VisualStudio.ComponentGroup.Azure.ResourceManager.Tools
* Microsoft.VisualStudio.ComponentGroup.Web.CloudTools
* Microsoft.VisualStudio.Workload.Azure
* Microsoft.VisualStudio.Workload.Data
* Microsoft.VisualStudio.Workload.DataScience
* Microsoft.VisualStudio.Workload.ManagedDesktop
* Microsoft.VisualStudio.Workload.ManagedGame
* Microsoft.VisualStudio.Workload.NativeCrossPlat
* Microsoft.VisualStudio.Workload.NativeDesktop
* Microsoft.VisualStudio.Workload.NativeGame
* Microsoft.VisualStudio.Workload.NativeMobile
* Microsoft.VisualStudio.Workload.NetCoreTools
* Microsoft.VisualStudio.Workload.NetCrossPlat
* Microsoft.VisualStudio.Workload.NetWeb
* Microsoft.VisualStudio.Workload.Node
* Microsoft.VisualStudio.Workload.Office
* Microsoft.VisualStudio.Workload.Python
* Microsoft.VisualStudio.Workload.Universal
* Microsoft.VisualStudio.Workload.VisualStudioExtension

## WIX Tools

_Toolset Version:_ 3.11.2318<br/>
_Environment:_
* WIX: Installation root of WIX

## .NET 4.8

_Version:_ 4.8.03761

## Windows Driver Kit

_Version:_ 10.0.17763.0<br/>

## Azure Service Fabric

_SDK Version:_ 3.3.617.9590<br/>
_Runtime Version:_ 6.4.617.9590

## WinAppDriver

_Version:_ 1.1.1809.18001<br/>

## Android SDK Build Tools

#### 28.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\28.0.3

#### 28.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\28.0.2

#### 28.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\28.0.1

#### 28.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\28.0.0

#### 27.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\27.0.3

#### 27.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\27.0.2

#### 27.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\27.0.1

#### 27.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\27.0.0

#### 26.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.3

#### 26.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.2

#### 26.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.1

#### 26.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.0

#### 25.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.3

#### 25.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.2

#### 25.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.1

#### 25.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.0

#### 24.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.3

#### 24.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.2

#### 24.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.1

#### 24.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.0

#### 23.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.3

#### 23.0.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.2

#### 23.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.1

#### 22.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\22.0.1

#### 21.1.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\21.1.2

#### 20.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\20.0.0

#### 19.1.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\19.1.0


## Android SDK Platforms

#### 9 (API 28)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-28

#### 8.1.0 (API 27)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-27

#### 8.0.0 (API 26)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-26

#### 7.1.1 (API 25)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-25

#### 7.0 (API 24)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-24

#### 6.0 (API 23)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-23

#### 5.1.1 (API 22)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-22

#### 5.0.1 (API 21)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-21

#### 4.4.2 (API 19)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-19


## Azure/AzureRM Powershell modules

#### 2.1.0

This version is installed and is available via Get-Module -ListAvailable

#### 3.8.0

This version is saved but not installed
_Location:_ C:\Modules\azurerm_3.8.0\AzureRM\3.8.0\AzureRM.psd1

#### 4.2.1

This version is saved but not installed
_Location:_ C:\Modules\azurerm_4.2.1\AzureRM\4.2.1\AzureRM.psd1

#### 5.1.1

This version is saved but not installed
_Location:_ C:\Modules\azurerm_5.1.1\AzureRM\5.1.1\AzureRM.psd1

#### 6.7.0

This version is saved but not installed
_Location:_ C:\Modules\azurerm_6.7.0\AzureRM\6.7.0\AzureRM.psd1


## TLS12

_Version:_ 1.2<br/>
_Description:_ .NET has been configured to use TLS 1.2 by default

## Azure CLI

_Version:_ 2.0.68
_Environment:_
* PATH: contains location of az.cmd

## Azure DevOps Cli extension

_Version:_ azure-devops                      0.11.0

## Python

_Version:_ 2.7.16 (x64)<br/>_Version:_ 2.7.16 (x86)<br/>_Version:_ 3.4.4 (x64)<br/>_Version:_ 3.4.4 (x86)<br/>_Version:_ 3.5.4 (x64)<br/>_Version:_ 3.5.4 (x86)<br/>_Version:_ 3.6.8 (x64)<br/>_Version:_ 3.6.8 (x86)<br/>_Version:_ 3.7.4 (x64)<br/>_Version:_ 3.7.4 (x86)<br/><br/>
> Note: These versions of Python are available through the [Use Python Version](https://go.microsoft.com/fwlink/?linkid=871498) task.

## PyPy

_Version:_ 2.7.13 (x86)<br/>_Version:_ 3.5.3 (x86)<br/><br/>
> Note: These versions of PyPy are available through the [Use Python Version](https://go.microsoft.com/fwlink/?linkid=871498) task.

## Ruby

_Version:_ 2.4.5 (x64)<br/>_Version:_ 2.5.3 (x64)<br/>_Version:_ 2.6.1 (x64)<br/><br/>
> Note: These versions of Ruby are available through the [Use Ruby Version](https://docs.microsoft.com/en-us/azure/devops/pipelines/tasks/tool/use-ruby-version) task.

## Python (64 bit)

#### Python 3.7.4
_Environment:_
* PATH: contains location of python.exe

#### Python 2.7.16

_Location:_ C:/hostedtoolcache/windows/Python/2.7*/x64

## Git

_Version:_ 2.22.0<br/>
_Environment:_
* PATH: contains location of git.exe

## Git Large File Storage (LFS)

_Version:_ 2.7.2<br/>
_Environment:_
* PATH: contains location of git-lfs.exe
* GIT_LFS_PATH: location of git-lfs.exe

## Go (x64)

#### 1.10.8

_Environment:_
* GOROOT_1_10_X64: root directory of the Go 1.10.8 installation

#### 1.11.9

_Environment:_
* GOROOT_1_11_X64: root directory of the Go 1.11.9 installation

#### 1.12.4

_Environment:_
* PATH: contains the location of go.exe version 1.12.4
* GOROOT: root directory of the Go 1.12.4 installation
* GOROOT_1_12_X64: root directory of the Go 1.12.4 installation


## Boost

####

* PATH: contains the location of Boost version
* BOOST_ROOT: root directory of the Boost version  installation
* BOOST_ROOT_1_69_0: root directory of the Boost version  installation


## PHP (x64)

#### 7.3.7

_Environment:_
* PATH: contains the location of php.exe version 7.3.7
* PHPROOT: root directory of the PHP 7.3.7 installation

## Ruby (x64)

#### 2.5.3p105
_Environment:_
* Location: C:\hostedtoolcache\windows\Ruby\2.5.3\x64\bin
* PATH: contains the location of ruby.exe version 2.5.3p105

## Rust (64-bit)

#### 1.36.0
_Location:_ C:\Rust\.cargo\bin
_Environment:_
* PATH: contains the location of rustc.exe

## Subversion

_Version:_ 1.8.17<br/>
_Environment:_
* PATH: contains location of svn.exe

## Google Chrome

_version:_
75.0.3770.100

## Mozilla Firefox

_version:_
68.0

## Selenium Web Drivers


#### Chrome Driver

_version:_
75.0.3770.90

_Environment:_
* ChromeWebDriver: location of chromedriver.exe

#### Gecko Driver

_version:_
0.24.0

_Environment:_
* GeckoWebDriver: location of geckodriver.exe

#### IE Driver

_version:_
3.8.0.0

_Environment:_
* IEWebDriver: location of IEDriverServer.exe


## Node.js

_Version:_ 10.16.0<br/>
_Architecture:_ x64<br/>
_Environment:_
* PATH: contains location of node.exe<br/>
* Gulp CLI version: 2.2.0 Local version: Unknown<br/>
* Grunt grunt-cli v1.3.2<br/>
* Bower 1.8.8<br/>
* Yarn 1.17.3<br/>

> Note: You can install and use another version of Node.js on Microsoft-hosted agent pools using the [Node tool installer](https://docs.microsoft.com/vsts/pipelines/tasks/tool/node-js) task.

## npm

_Version:_ 6.10.1<br/>
_Environment:_
* PATH: contains location of npm.cmd

## Java Development Kit

#### 1.8.0_212

_Environment:_
* JAVA_HOME: location of JDK
* PATH: contains bin folder of JDK

#### 1.7.0_222

_Location:_ C:\Program Files\Java\zulu-7-azure-jdk_7.29.0.5-7.0.222-win_x64

#### 11.0.3

_Location:_ C:\Program Files\Java\zulu-11-azure-jdk_11.31.11-11.0.3-win_x64

## Ant

_Version:_ 1.10.5<br/>
_Environment:_
* PATH: contains location of ant.cmd
* ANT_HOME: location of ant.cmd
* COBERTURA_HOME: location of cobertura-2.1.1.jar

## Maven

_Version:_ 3.6.1<br/>
_Environment:_
* PATH: contains location of mvn.bat
* M2_HOME: Maven installation root

## Gradle

_Version:_ 5.5.1<br/>
_Environment:_
* PATH: contains location of gradle

## Cmake

_Version:_ 3.14.5<br/>
_Environment:_
* PATH: contains location of cmake.exe

## SQL Server Data Tier Application Framework (x64)

_Version:_ 15.0.4384.2<br/>

## .NET Core

The following runtimes and SDKs are installed:

_Environment:_
* PATH: contains location of dotnet.exe

_SDK:_
* 2.2.105 C:\Program Files\dotnet\sdk\2.2.105
* 2.2.104 C:\Program Files\dotnet\sdk\2.2.104
* 2.2.103 C:\Program Files\dotnet\sdk\2.2.103
* 2.2.102 C:\Program Files\dotnet\sdk\2.2.102
* 2.2.101 C:\Program Files\dotnet\sdk\2.2.101
* 2.2.100 C:\Program Files\dotnet\sdk\2.2.100
* 2.1.701 C:\Program Files\dotnet\sdk\2.1.701
* 2.1.505 C:\Program Files\dotnet\sdk\2.1.505
* 2.1.504 C:\Program Files\dotnet\sdk\2.1.504
* 2.1.503 C:\Program Files\dotnet\sdk\2.1.503
* 2.1.502 C:\Program Files\dotnet\sdk\2.1.502
* 2.1.500 C:\Program Files\dotnet\sdk\2.1.500
* 2.1.403 C:\Program Files\dotnet\sdk\2.1.403
* 2.1.402 C:\Program Files\dotnet\sdk\2.1.402
* 2.1.401 C:\Program Files\dotnet\sdk\2.1.401
* 2.1.400 C:\Program Files\dotnet\sdk\2.1.400
* 2.1.4 C:\Program Files\dotnet\sdk\2.1.4
* 2.1.302 C:\Program Files\dotnet\sdk\2.1.302
* 2.1.301 C:\Program Files\dotnet\sdk\2.1.301
* 2.1.300 C:\Program Files\dotnet\sdk\2.1.300
* 2.1.202 C:\Program Files\dotnet\sdk\2.1.202
* 2.1.201 C:\Program Files\dotnet\sdk\2.1.201
* 2.1.200 C:\Program Files\dotnet\sdk\2.1.200
* 2.1.2 C:\Program Files\dotnet\sdk\2.1.2
* 2.1.105 C:\Program Files\dotnet\sdk\2.1.105
* 2.1.104 C:\Program Files\dotnet\sdk\2.1.104
* 2.1.103 C:\Program Files\dotnet\sdk\2.1.103
* 2.1.102 C:\Program Files\dotnet\sdk\2.1.102
* 2.1.101 C:\Program Files\dotnet\sdk\2.1.101
* 2.1.100 C:\Program Files\dotnet\sdk\2.1.100
* 2.0.3 C:\Program Files\dotnet\sdk\2.0.3
* 2.0.0 C:\Program Files\dotnet\sdk\2.0.0
* 1.1.9 C:\Program Files\dotnet\sdk\1.1.9
* 1.1.8 C:\Program Files\dotnet\sdk\1.1.8
* 1.1.7 C:\Program Files\dotnet\sdk\1.1.7
* 1.1.5 C:\Program Files\dotnet\sdk\1.1.5
* 1.1.4 C:\Program Files\dotnet\sdk\1.1.4
* 1.1.13 C:\Program Files\dotnet\sdk\1.1.13
* 1.1.12 C:\Program Files\dotnet\sdk\1.1.12
* 1.1.11 C:\Program Files\dotnet\sdk\1.1.11
* 1.1.10 C:\Program Files\dotnet\sdk\1.1.10
* 1.0.4 C:\Program Files\dotnet\sdk\1.0.4
* 1.0.1 C:\Program Files\dotnet\sdk\1.0.1

_Runtime:_
* 2.2.3 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.2.3
* 2.2.2 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.2.2
* 2.2.1 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.2.1
* 2.2.0 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.2.0
* 2.1.9 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.9
* 2.1.8 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.8
* 2.1.7 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.7
* 2.1.6 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.6
* 2.1.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.5
* 2.1.4 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.4
* 2.1.3 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.3
* 2.1.2 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.2
* 2.1.12 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.12
* 2.1.1 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.1
* 2.1.0 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.0
* 2.0.9 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.9
* 2.0.7 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.7
* 2.0.6 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.6
* 2.0.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.5
* 2.0.3 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.3
* 2.0.0 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.0.0
* 1.1.9 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.9
* 1.1.8 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.8
* 1.1.7 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.7
* 1.1.6 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.6
* 1.1.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.5
* 1.1.4 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.4
* 1.1.2 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.2
* 1.1.12 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.12
* 1.1.11 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.11
* 1.1.10 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.10
* 1.1.1 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.1
* 1.0.9 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.9
* 1.0.8 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.8
* 1.0.7 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.7
* 1.0.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.5
* 1.0.4 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.4
* 1.0.15 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.15
* 1.0.14 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.14
* 1.0.13 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.13
* 1.0.12 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.12
* 1.0.11 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.11
* 1.0.10 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.10

## Mysql

_Version:_ 5.7.21.0<br/>
_Environment:_
* PATH: contains location of mysql.exe

## MinGW

_Version:_ 8.1.0<br/>
_Environment:_
* PATH: contains location of the MinGW 'bin' directory

## TypeScript

_Version:_ Version 3.5.3<br/>

## Miniconda

_Version:_ conda 4.6.14<br/>
_Environment:_
* CONDA: contains location of the root of the Miniconda installation

## Azure CosmosDb Emulator

_Version:_ 2.4.5.0<br/>
_Location:_ C:\Program Files\Azure Cosmos DB Emulator\

## 7zip

_Version:_ 19.00<br/>

## Mercurial

_Version:_ <br/>

## jq

_Version:_ jq-1.5<br/>

## Inno Setup

_Version:_ 6.0.2<br/>

## Perl

_Version:_ v5.26.2<br/>

## GitVersion

_Version:_ 4.0.0.0<br/>

## OpenSSL

_Version:_ 1.1.1c at C:\Program Files\Git\usr\bin\openssl.exe<br/>_Version:_ 1.1.1c at C:\Program Files\Git\mingw64\bin\openssl.exe<br/>_Version:_ 1.0.2j at C:\Program Files (x86)\Subversion\bin\openssl.exe<br/>_Version:_ 1.1.1b at C:\Strawberry\c\bin\openssl.exe<br/>_Version:_ 1.1.1 at C:\Program Files\OpenSSL\bin\openssl.exe<br/>

## Cloud Foundry CLI

_Version:_ 6.46.0<br/>

## Vcpkg

_Version:_ 2019.06.26-nohash<br/>
_Environment:_
* PATH: contains location of the vcpkg directory
* VCPKG_INSTALLATION_ROOT: root directory of the vcpkg installation