#!/bin/bash
################################################################################
##  File:  python.sh
##  Team:  CI-Platform
##  Desc:  Installs Python 2/3 and related tools (pip, pypy)
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

# Install Python, Python 3, pip, pip3
apt-get install -y --no-install-recommends python python-dev python-pip python3 python3-dev python3-pip

# Instally PyPy2
wget -q -P /tmp https://bitbucket.org/pypy/pypy/downloads/pypy2-v6.0.0-linux64.tar.bz2
tar -x -C /opt -f /tmp/pypy2-v6.0.0-linux64.tar.bz2
rm /tmp/pypy2-v6.0.0-linux64.tar.bz2
mv /opt/pypy2-v6.0.0-linux64 /opt/pypy2
ln -s /opt/pypy2/bin/pypy /usr/local/bin/pypy

# Install PyPy3
wget -q -P /tmp https://bitbucket.org/pypy/pypy/downloads/pypy3-v6.0.0-linux64.tar.bz2
tar -x -C /opt -f /tmp/pypy3-v6.0.0-linux64.tar.bz2
rm /tmp/pypy3-v6.0.0-linux64.tar.bz2
mv /opt/pypy3-v6.0.0-linux64 /opt/pypy3
ln -s /opt/pypy3/bin/pypy3 /usr/local/bin/pypy3

# Run tests to determine that the software installed as expected
echo "Testing to make sure that script performed as expected, and basic scenarios work"
for cmd in python pip pypy python3 pip3 pypy3; do
    if ! command -v $cmd; then
        echo "$cmd was not installed or not found on PATH"
        exit 1
    fi
done

# Document what was added to the image
echo "Lastly, documenting what we added to the metadata file"
DocumentInstalledItem "Python ($(python --version 2>&1))"
DocumentInstalledItem "pip ($(pip --version))"
DocumentInstalledItem "Python3 ($(python3 --version))"
DocumentInstalledItem "pip3 ($(pip3 --version))"
DocumentInstalledItem "PyPy2 ($(pypy --version 2>&1 | grep PyPy))"
DocumentInstalledItem "PyPy3 ($(pypy3 --version 2>&1 | grep PyPy))"
