################################################################################
##  File:  Validate-Perl.ps1
##  Team:  CI-X
##  Desc:  Validate perl
################################################################################

if (Get-Command -Name 'perl')
{
    Write-Host "perl on path"
}
else
{
    Write-Host 'perl is not on path'
    exit 1
}

# Adding description of the software to Markdown
$SoftwareName = "Perl"

$Description = @"
_Version:_ $(perl -e 'print $^V')<br/>
"@

Add-SoftwareDetailsToMarkdown -SoftwareName $SoftwareName -DescriptionMarkdown $Description
