#!/bin/bash
################################################################################
##  File:  haskell.sh
##  Team:  CI-Platform
##  Desc:  Installs Haskell
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh
source $HELPER_SCRIPTS/apt.sh

# Install haskell-platform
apt-get install -y haskell-platform

# Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
if ! command -v ghc; then
    exit 1
fi

# Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Haskell ($(ghc --version))"
