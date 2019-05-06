#!/bin/bash
################################################################################
##  File:  docker.sh
##  Team:  CI-Platform
##  Desc:  Installs the correct version of docker onto the image, and pulls
##         down the default docker image used for building on ubuntu
################################################################################

source $HELPER_SCRIPTS/apt.sh
source $HELPER_SCRIPTS/document.sh

DOCKER_PACKAGE=moby
DEFAULT_DOCKER_IMAGE=microsoft/vsts-agent:ubuntu-16.04-docker-17.12.0-ce-standard

LSB_CODENAME=$(lsb_release -cs)

## Check to see if docker is already installed
echo "Determing if Docker ($DOCKER_PACKAGE) is installed"
if ! IsInstalled $DOCKER_PACKAGE; then
    echo "Docker ($DOCKER_PACKAGE) was not found. Installing..."
    apt-get remove -y moby-engine mobi-cli
    apt-get update
    apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
    curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/microsoft-prod.list
    apt-get update
    apt-get install -y moby-engine mobi-cli
else
    echo "Docker ($DOCKER_PACKAGE) is already installed"
fi

## Always pull down latest docker image, as it will no-op if it already exists
echo "Pulling down latest Docker image ($DEFAULT_DOCKER_IMAGE)"
docker pull $DEFAULT_DOCKER_IMAGE

## Add version information to the metadata file
echo "Documenting Docker version"
DOCKER_VERSION=`docker -v`
DocumentInstalledItem "Docker ($DOCKER_VERSION)"
