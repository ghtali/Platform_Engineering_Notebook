# Create a new EC2 instance
param (
    [string]$InstanceType = "t2.micro",
    [string]$KeyName,
    [string]$SecurityGroupId,
    [string]$ImageId
)

# Create the new EC2 instance
$instance = New-EC2Instance -InstanceType $InstanceType -KeyName $KeyName -SecurityGroupId $SecurityGroupId -ImageId $ImageId

Write-Host "New EC2 instance created with Instance ID: $($instance.Instances.InstanceId)"
