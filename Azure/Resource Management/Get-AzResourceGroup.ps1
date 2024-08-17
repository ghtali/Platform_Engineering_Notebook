# List all resource groups in the Azure subscription
$resourceGroups = Get-AzResourceGroup

# Output the resource groups
$resourceGroups | Format-Table -Property ResourceGroupName, Location, ProvisioningState

Write-Host "Listed all resource groups in your Azure subscription."