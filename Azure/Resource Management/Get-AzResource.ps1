# List all resources in the Azure subscription
$resources = Get-AzResource

# Output the resources
$resources | Format-Table -Property Name, ResourceGroupName, ResourceType, Location

Write-Host "Listed all resources in your Azure subscription."