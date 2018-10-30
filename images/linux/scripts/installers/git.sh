#!/bin/bash
################################################################################
##  File:  git.sh
##  Team:  CI-Platform
##  Desc:  Installs Git
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

## Install git
add-apt-repository ppa:git-core/ppa -y
apt-get update
apt-get install git -y
git --version

# Install git-lfs
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install -y --no-install-recommends git-lfs

# Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
if ! command -v git; then
    echo "git was not installed"
    exit 1
fi

# Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Git ($(git --version))"
