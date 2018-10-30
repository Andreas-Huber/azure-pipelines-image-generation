#!/bin/bash
################################################################################
##  File:  docker-ce.sh
##  Team:  CI-Platform
##  Desc:  Installs docker onto the image, but does not pre-pull any images
################################################################################

source $HELPER_SCRIPTS/apt.sh
source $HELPER_SCRIPTS/document.sh

docker_package=docker-ce

LSB_CODENAME=$(lsb_release -cs)

## Check to see if docker is already installed
echo "Determing if Docker ($docker_package) is installed"
if ! IsInstalled $docker_package; then
    echo "Docker ($docker_package) was not found. Installing..."
    apt-get remove -y docker docker-engine docker.io
    apt-get update
    apt-get install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $LSB_CODENAME stable"
    apt-get update
    apt-get install -y docker-ce
else
    echo "Docker ($docker_package) is already installed"
fi

# Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
if ! command -v docker; then
    echo "docker was not installed"
    exit 1
else
    # Docker daemon takes time to come up after installing
    sleep 10
    set -e
    docker info
    set +e
fi

## Add version information to the metadata file
echo "Documenting Docker version"
docker_version=$(docker -v)
DocumentInstalledItem "Docker ($docker_version)"
