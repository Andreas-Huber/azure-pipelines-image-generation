# Azure Pipelines Windows Container(1803) image

The following software is installed on machines in the Azure Pipelines **Windows Container(1803)** pool.

Components marked with **\*** have been upgraded since the previous version of the image.


## Chocolatey

_Version:_ 0.10.11<br/>
_Environment:_
* PATH: contains location for choco.exe

## Docker

_Version:_ 17.06.2-ee-15<br/>
_Environment:_
* PATH: contains location of docker.exe

## Docker-compose

_Version:_ 1.22.0<br/>
_Environment:_
* PATH: contains location of docker-compose.exe

## Docker images

The following container images have been cached:
* microsoft/aspnet:(sha256:36655834fca5eec6150e0f26bb1290423104a52836cfcbfc67c4cfa0dcee3ba9)
* microsoft/aspnetcore-build:(sha256:900f6d08617b725fa2aebb53db983cc8de4acf247fed3c8781011d3358706c32)
* microsoft/dotnet-framework:(sha256:cfcd42bdc1646318cb8a314c298e8ba0b7e962829460c49ba2c609eb125e5e7f)
* microsoft/windowsservercore:(sha256:7bc56e2d8249415620d0f2a890689ea623caa7df52b9252dc336c32d240db1ef)
* microsoft/nanoserver:(sha256:da21725ae14e9fa65aa33c8f3cb2e1822184e476bbb8487a15cc40df00b98eba)
* microsoft/windowsservercore:(sha256:06349a37774c52fd65cf87485ab7455e1745ea1f752da52bf4c1b1f44b242fb7)
* microsoft/nanoserver:(sha256:0b788ec819b0eb1c1f62677206fdb536eeba44d805cfcc21e7240e860eeeb5e0)

## Git

_Version:_ 2.18.0<br/>
_Environment:_
* PATH: contains location of git.exe

## Git LFS

_Version:_ 2.4.2<br/>
_Environment:_
* PATH: contains location of git-lfs.exe
* GIT_LFS_PATH: location of git-lfs.exe

## Subversion

_Version:_ 1.8.17<br/>
_Environment:_
* PATH: contains location of svn.exe
