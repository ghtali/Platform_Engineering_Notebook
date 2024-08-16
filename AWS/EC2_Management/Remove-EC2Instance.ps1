# Terminate an EC2 instance
param (
    [string]$InstanceId
)

# Terminate the EC2 instance
Remove-EC2Instance -InstanceId $InstanceId

Write-Host "Terminating EC2 instance with Instance ID: $InstanceId"