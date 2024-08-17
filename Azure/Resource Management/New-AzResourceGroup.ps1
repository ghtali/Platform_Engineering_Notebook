# Create a new resource group in Azure
param (
    [string]$ResourceGroupName,
    [string]$Location
)

# Create the resource group
New-AzResourceGroup -Name $ResourceGroupName -Location $Location

Write-Host "Resource group '$ResourceGroupName' created successfully in location '$Location'."