#!/bin/bash
################################################################################
##  File:  xvfb.sh
##  Team:  CI-Platform
##  Desc:  Installs xvfb
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh
source $HELPER_SCRIPTS/apt.sh

# Install Xvfb
apt-get install -y xvfb

# Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Xvfb"
