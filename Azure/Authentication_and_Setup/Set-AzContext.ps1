# Set the subscription context for Azure session
param (
    [string]$SubscriptionId
)

# Set the Azure context to the specified subscription
Set-AzContext -SubscriptionId $SubscriptionId

Write-Host "Azure subscription context set to Subscription ID: $SubscriptionId"