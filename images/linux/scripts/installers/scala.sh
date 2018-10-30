#!/bin/bash
################################################################################
##  File:  scala.sh
##  Team:  CI-Platform
##  Desc:  Installs Scala
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > /usr/local/bin/sbt \
	&& chmod 0755 /usr/local/bin/sbt

# Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Scala"
