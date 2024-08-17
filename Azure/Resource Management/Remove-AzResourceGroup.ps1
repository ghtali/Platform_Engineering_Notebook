# Delete a resource group in Azure
param (
    [string]$ResourceGroupName
)

# Remove the resource group
Remove-AzResourceGroup -Name $ResourceGroupName -Force

Write-Host "Resource group '$ResourceGroupName' has been deleted successfully."