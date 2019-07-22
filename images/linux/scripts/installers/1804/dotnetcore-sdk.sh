#!/bin/bash
################################################################################
##  File:  dotnetcore-sdk.sh
##  Team:  CI-Platform
##  Desc:  Installs .NET Core SDK
################################################################################

source $HELPER_SCRIPTS/apt.sh
source $HELPER_SCRIPTS/document.sh

LSB_RELEASE=$(lsb_release -rs)

set -e

# fixes - https://github.com/dotnet/core-setup/issues/4049 and open issue https://github.com/dotnet/core-setup/issues/5812
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-bionic-prod bionic main" > /etc/apt/sources.list.d/dotnetdev.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.105

mkdir 2.1.105
cd 2.1.105
set -e 
dotnet help
dotnet new globaljson --sdk-version "2.1.105" --force
dotnet new "console"
dotnet restore
dotnet build
set +e
cd ..
rm -rf 2.1.105

mkdir 2.1.105
cd 2.1.105
set -e 
dotnet help
dotnet new globaljson --sdk-version "2.1.105" --force
dotnet new "mstest"
dotnet restore
dotnet build
set +e
cd ..
rm -rf 2.1.105