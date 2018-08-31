#!/bin/bash
################################################################################
##  File:  basic.sh
##  Team:  CI-Platform
##  Desc:  Installs basic command line utilities
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh
source $HELPER_SCRIPTS/apt.sh

# Install basic command-line utilities
apt-get install -y --no-install-recommends \
    curl \
    dnsutils \
    file \
    ftp \
    iproute2 \
    iputils-ping \
    jq \
    libcurl3 \
    libicu55 \
    libunwind8 \
    locales \
    netcat \
    openssh-client \
    rsync \
    shellcheck \
    sudo \
    telnet \
    time \
    unzip \
    wget \
    zip \
    tzdata

## Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
for cmd in curl file ftp jq netcat ssh rsync shellcheck sudo telnet time unzip wget zip; do
    if ! command -v $cmd; then
        echo "$cmd was not installed"
        exit 1
    fi
done

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Basic CLI"
