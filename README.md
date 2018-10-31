# Azure Pipelines Hosted Images
![Banner](/docs/resources/ImageGenBanner.png "Banner")

## Overview

This repo contains the scripts and instructions to generate the images used for the Azure Pipelines hosted pool images.

# Hosted image contents

- [macOS 10.13](images/macos/macos-Readme.md)
- [Ubuntu 16.04](images/linux/Ubuntu1604-README.md)
- [VS 2017 + Windows Server 2016](images/win/Vs2017-Server2016-Readme.md)
- [VS 2015 + Windows Server 2012 R2](images/win/Vs2015-Server2012R2-Readme.md)
- [Windows Container 1803](images/win/WindowsContainer1803-Readme.md)

# Contributing

This project welcomes contributions and suggestions.
See the [contribution process](.github/CONTRIBUTING.md) to get started.

Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Issues and requests

If you have an issue with one of the images, please create an issue in this repo.

To add or change a tool on one of our images, see our [contribution process](.github/CONTRIBUTING.md).

## Generating images

The images are generated using [Packer](https://www.packer.io/).

## Windows

[How to use Packer to create Windows virtual machine images in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/build-image-with-packer)

## Linux

[How to use Packer to create Linux virtual machine images in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/build-image-with-packer)

## Instructions to build VS2017 images

[VS2017](docs/vs2017.md)
