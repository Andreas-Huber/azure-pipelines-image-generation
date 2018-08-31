#!/bin/bash
################################################################################
##  File:  dotnetcore-sdk.sh
##  Team:  CI-Platform
##  Desc:  Installs .NET Core SDK
################################################################################

source $HELPER_SCRIPTS/apt.sh
source $HELPER_SCRIPTS/document.sh

DOTNET_PACKAGE=dotnet-sdk-2.1

LSB_RELEASE=$(lsb_release -rs)

echo "Determing if .NET Core ($DOTNET_PACKAGE) is installed"
if ! IsInstalled $DOTNET_PACKAGE; then
    echo "Could not find .NET Core ($DOTNET_PACKAGE), installing..."
    apt-get install $DOTNET_PACKAGE -y
else
    echo ".NET Core ($DOTNET_PACKAGE) is already installed"
fi

echo "Testing .NET Core ($DOTNET_PACKAGE)"
echo "Pulling down initial dependencies"
dotnet help

echo "Documenting .NET Core ($DOTNET_PACKAGE)"
DocumentInstalledItem ".NET Core SDKs $(dotnet --list-sdks)"
