################################################################################
##  File:  Install-Rust.ps1
##  Team:  CI-Platform
##  Desc:  Install Rust for Windows
################################################################################

Import-Module -Name ImageHelpers

# Rust Env
$env:RUSTUP_HOME="$env:ProgramFiles\Rust\.rustup"
$env:CARGO_HOME="$env:ProgramFiles\Rust\.cargo"

# Download the latest rustup-init.exe for Windows x64
# See https://rustup.rs/#
Invoke-WebRequest -UseBasicParsing -Uri "https://win.rustup.rs/x86_64" -OutFile rustup-init.exe

# Install Rust by running rustup-init.exe (disabling the confirmation prompt with -y)
.\rustup-init.exe -y

# Delete rustup-init.exe when it's no longer needed
rm .\rustup-init.exe

# Add Rust binaries to the path
Add-MachinePathItem "$env:CARGO_HOME\bin"
$env:Path = Get-MachinePath
setx RUSTUP_HOME $env:RUSTUP_HOME /M
setx CARGO_HOME $env:CARGO_HOME /M

# Install common tools
rustup component add rustfmt
rustup component add clippy
cargo install bindgen
cargo install cbindgen

exit 0
