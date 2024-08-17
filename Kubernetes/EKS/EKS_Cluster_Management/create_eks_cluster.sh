#!/bin/bash

# Parameters for the EKS cluster
CLUSTER_NAME="my-cluster"  # Replace with your desired EKS cluster name
ROLE_ARN="arn:aws:iam::ACCOUNT_ID:role/EKSRole"  # Replace 'ACCOUNT_ID' with your actual AWS account ID and 'EKSRole' with your IAM role name
SUBNET_IDS="subnet-abc123"  # Replace with your actual subnet IDs, separated by commas if more than one
SECURITY_GROUP_IDS="sg-abc123"  # Replace with your actual security group IDs, separated by commas if more than one

# Create the EKS cluster
aws eks create-cluster \
  --name $CLUSTER_NAME \
  --role-arn $ROLE_ARN \
  --resources-vpc-config subnetIds=$SUBNET_IDS,securityGroupIds=$SECURITY_GROUP_IDS

echo "EKS cluster '$CLUSTER_NAME' created successfully."
