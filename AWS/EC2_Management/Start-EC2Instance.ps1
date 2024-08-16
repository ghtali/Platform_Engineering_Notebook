# Start an EC2 instance
param (
    [string]$InstanceId
)

# Start the EC2 instance
Start-EC2Instance -InstanceId $InstanceId

Write-Host "Starting EC2 instance with Instance ID: $InstanceId"
