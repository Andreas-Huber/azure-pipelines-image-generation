################################################################################
##  File:  Validate-Rust.ps1
##  Team:  CI-X
##  Desc:  Verify that Rust is on the path and output version information.
################################################################################

if (Get-Command -Name 'rustc')
{
    $RustcVersion = rustc --version
    Write-Host "$RustcVersion is on the path"
}
else
{
     Write-Host "rustc is not on the path"
    exit 1
}

$RustPath = Split-Path (Get-Command -Name 'rustc').Path
$RustcVersion -Match "\d+\.\d+\.\d+" | Out-Null
$Version = $Matches[0]

# Adding description of the software to Markdown
$SoftwareName = "Rust (64-bit)"
$Description = @"
#### $Version
_Location:_ $RustPath
_Environment:_
* PATH: contains the location of rustc.exe
* RUSTUP_HOME: contains the location of rustup
* CARGO_HOME: contains the location of cargo
"@

Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description
