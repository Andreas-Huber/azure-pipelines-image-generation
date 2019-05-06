$ErrorActionPreference = 'Stop'

enum ImageType {
    VS2017 = 0
    VS2019 = 1
    Ubuntu1604 = 2
    WinCon = 3
}

Function Get-PackerTemplatePath {
    param (
        [Parameter(Mandatory = $True)]
        [string] $RepositoryRoot,
        [Parameter(Mandatory = $True)]
        [ImageType] $ImageType
    )
    
    $relativePath = "N/A"

    switch ($ImageType) {
        ([ImageType]::VS2017) {
            $relativePath = "\images\win\vs2017-Server2016-Azure.json"
        }
        ([ImageType]::VS2019) {
            $relativePath = "\images\win\vs2019-Server2019-Azure.json"
        }
        ([ImageType]::Ubuntu1604) {
            $relativePath = "\images\linux\ubuntu1604.json"
        }
        ([ImageType]::WinCon) {
            $relativePath = "\images\win\WindowsContainer1803-Azure.json"
        }
    }

    return $RepositoryRoot + $relativePath;
}

Function GenerateResourcesAndImage {
    <#
        .SYNOPSIS
            A helper function to help generate an image.

        .DESCRIPTION
            Creates Azure resources and kicks off a packer image generation for the selected image type.

        .PARAMETER SubscriptionId
            The Azure subscription Id where resources will be created.

        .PARAMETER ResourceGroupName
            The Azure resource group name where the Azure resources will be created.

        .PARAMETER ImageGenerationRepositoryRoot
            The root path of the image generation repository source.

        .PARAMETER ImageType
            The type of the image being generated. Valid options are: {"VS2017", "VS2019", "Ubuntu164", "WinCon"}.

        .PARAMETER AzureLocation
            The location of the resources being created in Azure. For example "East US".

        .EXAMPLE
            GenerateResourcesAndImage -SubscriptionId {YourSubscriptionId} -ResourceGroupName "shsamytest1" -ImageGenerationRepositoryRoot "C:\azure-pipelines-image-generation" -ImageType Ubuntu1604 -AzureLocation "East US"
    #>
    param (
        [Parameter(Mandatory = $True)]
        [string] $SubscriptionId,
        [Parameter(Mandatory = $True)]
        [string] $ResourceGroupName,
        [Parameter(Mandatory = $True)]
        [string] $ImageGenerationRepositoryRoot,
        [Parameter(Mandatory = $True)]
        [ImageType] $ImageType,
        [Parameter(Mandatory = $True)]
        [string] $AzureLocation
    )
    
    $builderScriptPath = Get-PackerTemplatePath -RepositoryRoot $ImageGenerationRepositoryRoot -ImageType $ImageType
    $ServicePrincipalClientSecret = $env:UserName + [System.GUID]::NewGuid().ToString().ToUpper();
    $InstallPassword = $env:UserName + [System.GUID]::NewGuid().ToString().ToUpper();

    Login-AzureRmAccount
    Set-AzureRmContext -SubscriptionId $SubscriptionId

    $alreadyExists = $true;
    try {
        Get-AzureRmResourceGroup -Name $ResourceGroupName
        $alreadyExists = $true
        Write-Verbose "Resource group was found, will delete and recreate it."
    }
    catch {
        Write-Verbose "Resource group was not found, will create it."
        $alreadyExists = $false;
    }

    if ($alreadyExists) {
        # Cleanup the resource group if it already exitsted before
        Remove-AzureRmResourceGroup -Name $ResourceGroupName -Force
    }

    New-AzureRmResourceGroup -Name $ResourceGroupName -Location $AzureLocation

    $storageAccountName = $ResourceGroupName
    New-AzureRmStorageAccount -ResourceGroupName $ResourceGroupName -AccountName $storageAccountName -Location $AzureLocation -SkuName "Standard_LRS"

    $spDisplayName = [System.GUID]::NewGuid().ToString().ToUpper()
    $sp = New-AzureRmADServicePrincipal -DisplayName $spDisplayName -Password (ConvertTo-SecureString $ServicePrincipalClientSecret -AsPlainText -Force)

    $spAppId = $sp.ApplicationId
    $spClientId = $sp.ApplicationId
    $spObjectId = $sp.Id
    Sleep 60

    New-AzureRmRoleAssignment -RoleDefinitionName Contributor -ServicePrincipalName $spAppId
    $sub = Get-AzureRmSubscription -SubscriptionId $SubscriptionId
    $tenantId = $sub.TenantId
    # "", "Note this variable-setting script for running Packer with these Azure resources in the future:", "==============================================================================================", "`$spClientId = `"$spClientId`"", "`$ServicePrincipalClientSecret = `"$ServicePrincipalClientSecret`"", "`$SubscriptionId = `"$SubscriptionId`"", "`$tenantId = `"$tenantId`"", "`$spObjectId = `"$spObjectId`"", "`$AzureLocation = `"$AzureLocation`"", "`$ResourceGroupName = `"$ResourceGroupName`"", "`$storageAccountName = `"$storageAccountName`"", "`$install_password = `"$install_password`"", ""

    packer.exe build -on-error=ask -var "client_id=$($spClientId)" -var "client_secret=$($ServicePrincipalClientSecret)" -var "subscription_id=$($SubscriptionId)" -var "tenant_id=$($tenantId)" -var "object_id=$($spObjectId)" -var "location=$($AzureLocation)" -var "resource_group=$($ResourceGroupName)" -var "storage_account=$($storageAccountName)" -var "install_password=$($InstallPassword)" $builderScriptPath
}
