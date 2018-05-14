#!/bin/bash
################################################################################
##  File:  hhvm.sh
##  Team:  CI-Platform
##  Desc:  This is an example script that can be copied to add a new software
##         installer to the image
################################################################################

## Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh
source $HELPER_SCRIPTS/apt.sh

PACKAGE=hhvm

## Test to see if the software in question is already installed, if not install it
echo "Checking to see if the installer script has already been run"
if ! IsInstalled $PACKAGE; then
    apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94
    add-apt-repository https://dl.hhvm.com/ubuntu
    apt-get update
    apt-get -qq install -y hhvm
else
    echo "$PACKAGE already installed"
fi

## Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
if ! IsInstalled $PACKAGE; then
    echo "$PACKAGE was not installed"
    return -1
fi

## Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "HHVM ($(hhvm --version | head -n 1))"
