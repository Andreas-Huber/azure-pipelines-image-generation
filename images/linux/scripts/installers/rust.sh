#!/bin/bash
################################################################################
##  File:  rust.sh
##  Team:  CI-Platform
##  Desc:  Installs Rust
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/document.sh

set -e

export RUSTUP_HOME=/usr/local/rustup
export CARGO_HOME=/usr/local/cargo

curl https://sh.rustup.rs -sSf | sh -s -- -y

echo "RUSTUP_HOME=$RUSTUP_HOME" | tee -a /etc/environment
echo "CARGO_HOME=$CARGO_HOME" | tee -a /etc/environment
echo "PATH=\"$PATH:$CARGO_HOME/bin\"" | tee -a /etc/environment

source $CARGO_HOME/env

# Install common tools
rustup component add rustfmt
rustup component add clippy
cargo install bindgen
cargo install cbindgen

chmod -R 0777 $RUSTUP_HOME
chmod -R 0777 $CARGO_HOME

echo "Test installation of the Rust toochain"

for cmd in rustup rustc rustdoc cargo rustfmt cargo-clippy bindgen cbindgen; do
    if ! command -v $cmd --version; then
        echo "$cmd was not installed or is not found on the path"
        exit 1
    fi
done

# Document what was added to the image
echo "Lastly, document what was added to the metadata file"
DocumentInstalledItem "rustup ($(rustup --version 2>&1 | cut -d ' ' -f 2))"
DocumentInstalledItem "Rust ($(rustc --version 2>&1 | cut -d ' ' -f 2))"
DocumentInstalledItem "cargo ($(cargo --version 2>&1 | cut -d ' ' -f 2))"
DocumentInstalledItem "rustfmt ($(rustfmt --version 2>&1 | cut -d ' ' -f 2))"
DocumentInstalledItem "clippy ($(cargo-clippy --version 2>&1 | cut -d ' ' -f 2))"
DocumentInstalledItem "rustdoc ($(rustdoc --version 2>&1 | cut -d ' ' -f 2))"
DocumentInstalledItem "bindgen ($(bindgen --version 2>&1 | cut -d ' ' -f 2))"
DocumentInstalledItem "cbindgen ($(cbindgen --version 2>&1 | cut -d ' ' -f 2))"
