# This script will take an InstanceId as a parameter and stop the specified EC2 instance.

# Stop an EC2 instance
param (
    [string]$InstanceId
)

# Stop the EC2 instance
Stop-EC2Instance -InstanceId $InstanceId

Write-Host "Stopping EC2 instance with Instance ID: $InstanceId"