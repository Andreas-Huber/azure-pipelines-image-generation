# Azure Pipelines Hosted VS2017 image

The following software is installed on machines in the Azure Pipelines **Hosted VS2017** pool.

Components marked with **\*** have been upgraded since the previous version of the image.

## Chocolatey

_Version:_ 0.10.11<br/>
_Environment:_
* PATH: contains location for choco.exe

## Docker

_Version:_ 17.06.2-ee-16<br/>
_Environment:_
* PATH: contains location of docker.exe

## Docker-compose

_Version:_ 1.22.0<br/>
_Environment:_
* PATH: contains location of docker-compose.exe

## Docker images

The following container images have been cached:
* microsoft/aspnetcore-build:(sha256:9ecc7c5a8a7a11dca5f08c860165646cb30d084606360a3a72b9cbe447241c0c)
* microsoft/aspnet:(sha256:ebbaf320b4dd0492079490fb83b3788925087987fde955cd5d4c32d82e9ce5f0)
* microsoft/dotnet-framework:(sha256:11ebb3b67738ce1132a92b55d0558f11d7dd6bb8ccf44caf94d8e90516d36251)
* microsoft/windowsservercore:(sha256:1abdafc502a7e0d18af4d844c6f88f0b225eb928619b79086e895b95ecc26fdc)
* microsoft/nanoserver:(sha256:ba322999264cd8ecdfb3fcaec020c7a479ff63e6c4333d89d11d67ecbd96b2b3)

## Visual Studio 2017 Enterprise

_Version:_ VisualStudio/15.8.1+28010.2003<br/>
_Location:_ C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise

The following workloads including required and recommended components are installed with Visual Studio 2017:

* Universal Windows Platform development
* .NET desktop development
* Desktop development with C++
* ASP.NET and web development
* Azure development
* Node.js development
* Data storage and processing
* Data science and analytical applications *
* Game development with Unity *
* Linux development with C++ *
* Game development with C++ *
* Mobile development with C++ *
* Office/SharePoint development
* Mobile development with .NET
* .NET Core cross-platform development
* Visual Studio extension development *
* Python development *
* Mobile development with JavaScript *

In addition the following optional components are installed:

* Microsoft.Net.Component.4.6.2.SDK
* Microsoft.Net.Component.4.6.2.TargetingPack
* Microsoft.Net.ComponentGroup.4.6.2.DeveloperTools
* Microsoft.Net.Component.4.7.SDK
* Microsoft.Net.Component.4.7.TargetingPack
* Microsoft.Net.ComponentGroup.4.7.DeveloperTools
* Microsoft.Net.Component.4.7.1.SDK
* Microsoft.Net.Component.4.7.1.TargetingPack
* Microsoft.Net.ComponentGroup.4.7.1.DeveloperTools
* Microsoft.Net.Core.Component.SDK.1x
* Microsoft.NetCore.1x.ComponentGroup.Web
* Microsoft.VisualStudio.Component.Azure.Storage.AzCopy
* Microsoft.VisualStudio.Component.PowerShell.Tools
* Microsoft.VisualStudio.Component.VC.140
* Component.Dotfuscator
* Microsoft.VisualStudio.Component.VC.ATL
* Microsoft.VisualStudio.Component.VC.ATLMFC
* Microsoft.VisualStudio.Component.VC.ClangC2
* Microsoft.VisualStudio.Component.VC.CLI.Support
* Microsoft.VisualStudio.Component.VC.Modules.x86.x64
* Microsoft.VisualStudio.Component.Windows10SDK.10240
* Microsoft.VisualStudio.Component.Windows10SDK.10586
* Microsoft.VisualStudio.Component.Windows10SDK.14393
* Microsoft.VisualStudio.Component.Windows10SDK.15063.Desktop
* Component.Unreal
* Component.Unreal.Android
* Component.Android.SDK23
* Microsoft.VisualStudio.Component.TestTools.WebLoadTest
* Microsoft.VisualStudio.Web.Mvc4.ComponentGroup
* Component.CPython2.x64
* Microsoft.Component.PythonTools.UWP
* Microsoft.Component.VC.Runtime.OSSupport
* Microsoft.VisualStudio.Component.VC.Tools.ARM
* Microsoft.VisualStudio.ComponentGroup.UWP.VC
* Microsoft.VisualStudio.Component.VSSDK
* Microsoft.VisualStudio.Component.LinqToSql
* Microsoft.VisualStudio.Component.TestTools.CodedUITest
* Microsoft.VisualStudio.Component.TestTools.Core
* Microsoft.VisualStudio.Component.TypeScript.2.0
* Microsoft.VisualStudio.Component.TypeScript.2.1
* Microsoft.VisualStudio.Component.TypeScript.2.2
* Microsoft.VisualStudio.Component.VC.Tools.ARM64
* Microsoft.VisualStudio.Component.Windows10SDK.16299.Desktop.arm
* Microsoft.VisualStudio.Component.DslTools
* Microsoft.VisualStudio.Component.Windows81SDK
* Microsoft.VisualStudio.Component.WinXP
* Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Win81
* Microsoft.VisualStudio.ComponentGroup.NativeDesktop.WinXP
* Microsoft.VisualStudio.ComponentGroup.ArchitectureTools.Managed
* Microsoft.Component.Blend.SDK.WPF

## SQL Server Data Tools for VS 2017

_Version:_ 15.1.61808.7030<br/>

The following components are installed:

* SQL Server Data Tools
* SQL Server Analysis Services Designer
* SQL Server Integration Services Designer
* SQL Server Reporting Services Designers

## WIX Tools

_Toolset Version:_ 3.11.2318<br/>
_WIX Toolset Studio 2017 Extension Version:_ 0.9.21.62588<br/>
_Environment:_
* WIX: Installation root of WIX

## .NET 4.7.2

_Version:_ 4.7.03062

## Azure Service Fabric

_SDK Version:_ 3.2.162.9494<br/>
_Runtime Version:_ 6.3.162.9494

## Python (64 bit)

#### Python 3.6.6
_Environment:_
* PATH: contains location of python.exe

#### Python 2.7.14

_Location:_ C:\Python27amd64

## Android SDK Build Tools

#### 27.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\27.0.3

#### 27.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\27.0.1

#### 26.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.3

#### 26.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\26.0.1

#### 25.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\25.0.3

#### 24.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\24.0.3

#### 23.0.3

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.3

#### 23.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\23.0.1

#### 22.0.1

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\22.0.1

#### 21.1.2

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\21.1.2

#### 19.1.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\19.1.0

#### 17.0.0

_Location:_ C:\Program Files (x86)\Android\android-sdk\build-tools\17.0.0


## Android SDK Platforms

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

#### 4.2.2 (API 17)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-17

#### 4.0.3 (API 15)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-15

#### 2.3.3 (API 10)

_Location:_ C:\Program Files (x86)\Android\android-sdk\platforms\android-10


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


## Azure CLI

_Version:_ 2.0.44<br/>
_Environment:_
* PATH: contains location of az.cmd

## Python

_Version:_ 2.7.14 (x86)<br/>_Version:_ 3.4.4 (x86)<br/>_Version:_ 3.5.4 (x86)<br/>_Version:_ 3.6.4 (x86)<br/>_Version:_ 3.7.0 (x86)<br/>_Version:_ 2.7.14 (x64)<br/>_Version:_ 3.4.4 (x64)<br/>_Version:_ 3.5.4 (x64)<br/>_Version:_ 3.6.4 (x64)<br/>_Version:_ 3.7.0 (x64)<br/><br/>
> Note: These versions of Python are available through the [Use Python Version](https://go.microsoft.com/fwlink/?linkid=871498) task.

## Git

_Version:_ 2.18.0<br/>
_Environment:_
* PATH: contains location of git.exe

## Git LFS

_Version:_ 2.4.2<br/>
_Environment:_
* PATH: contains location of git-lfs.exe
* GIT_LFS_PATH: location of git-lfs.exe

## Go (x64)

#### 1.9.4

_Environment:_
* GOROOT_1_9_X64: root directory of the Go 1.9.4 installation

#### 1.10

_Environment:_
* PATH: contains the location of go.exe version 1.10
* GOROOT: root directory of the Go 1.10 installation
* GOROOT_1_10_X64: root directory of the Go 1.10 installation

## Ruby (x64)

#### 2.4.3p205

_Location:_ C:\hostedtoolcache\windows\Ruby\2.4.3\x64\bin

#### 2.5.0p0

_Environment:_
* Location: C:\hostedtoolcache\windows\Ruby\2.5.0\x64\bin
* PATH: contains the location of ruby.exe version 2.5.0p0

## Subversion

_Version:_ 1.8.17<br/>
_Environment:_
* PATH: contains location of svn.exe

## Google Chrome

_version:_
68.0.3440.106

## Mozilla Firefox

_version:_
58.0.2

## Selenium Web Drivers


#### Chrome Driver

_version:_
2.40

_Environment:_
* ChromeWebDriver: location of chromedriver.exe

#### Gecko Driver

_version:_
0.19.1

_Environment:_
* GeckoWebDriver: location of geckodriver.exe

#### IE Driver

_version:_
3.8.0.0

_Environment:_
* IEWebDriver: location of IEDriverServer.exe


## Node.js

_Version:_ 8.11.4<br/>
_Environment:_
* PATH: contains location of node.exe<br/>

> Note: You can install and use another version of Node.js on Microsoft-hosted agent pools using the [Node tool installer](https://docs.microsoft.com/vsts/pipelines/tasks/tool/node-js) task.

## npm

_Version:_ 5.6.0<br/>
_Environment:_
* PATH: contains location of npm.cmd

## Java Development Kit

#### 1.8.0_181

_Environment:_
* JAVA_HOME: location of JDK
* PATH: contains bin folder of JDK

#### 1.8.0_181

_Location:_ 

#### 10.0.2

_Location:_ C:\Program Files\Java\jdk-10.0.2

## Ant

_Version:_ 1.10.1<br/>
_Environment:_
* PATH: contains location of ant.cmd
* ANT_HOME: location of ant.cmd
* COBERTURA_HOME: location of cobertura-2.1.1.jar

## Maven

_Version:_ 3.5.4<br/>
_Environment:_
* PATH: contains location of mvn.bat
* M2_HOME: Maven installation root

## Gradle

_Version:_ 4.9<br/>
_Environment:_
* PATH: contains location of gradle

## Cmake

_Version:_ 3.12.1<br/>
_Environment:_
* PATH: contains location of cmake.exe

## SQL Server Data Tier Application Framework (x64)

_Version:_ 14.0.3917.1<br/>

## .NET Core

The following runtimes and SDKs are installed:

_Environment:_
* PATH: contains location of dotnet.exe

_SDK:_
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
* 1.1.10 C:\Program Files\dotnet\sdk\1.1.10
* 1.0.4 C:\Program Files\dotnet\sdk\1.0.4
* 1.0.1 C:\Program Files\dotnet\sdk\1.0.1

_Runtime:_
* 2.1.2 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\2.1.2
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
* 1.1.1 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.1.1
* 1.0.9 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.9
* 1.0.8 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.8
* 1.0.7 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.7
* 1.0.5 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.5
* 1.0.4 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.4
* 1.0.12 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.12
* 1.0.11 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.11
* 1.0.10 C:\Program Files\dotnet\shared\Microsoft.NETCore.App\1.0.10

## Mysql

_Version:_ 5.7.21.0<br/>
_Environment:_
* PATH: contains location of mysql.exe

## TLS12

_Version:_ 1.2<br/>
_Description:_ .NET has been configured to use TLS 1.2 by default

## MinGW

_Version:_ 5.3.0<br/>
_Environment:_
* PATH: contains location of the MinGW 'bin' directory

## TypeScript

_Version:_ Version 3.0.1<br/>

## Miniconda

_Version:_ conda 4.5.4<br/>
_Environment:_
* CONDA: contains location of the root of the Miniconda installation

## Azure CosmosDb Emulator

_Version:_ 1.22.0.0<br/>
_Location:_ C:\Program Files\Azure Cosmos DB Emulator\
