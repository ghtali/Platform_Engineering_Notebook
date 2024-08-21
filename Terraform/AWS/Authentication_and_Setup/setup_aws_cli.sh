#!/bin/bash

# Set Up AWS CLI for Terraform
# Repository: https://github.com/ghtali/Platform_Engineering_Notebook/
# Personal Note: This script installs and configures AWS CLI, enabling Terraform to authenticate and manage AWS resources efficiently.

# Step 1: Install AWS CLI if it's not already installed
if ! command -v aws &> /dev/null
then
    echo "AWS CLI is not installed. Installing AWS CLI..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip aws/
    echo "AWS CLI installed successfully."
else
    echo "AWS CLI is already installed."
fi

# Step 2: Configure AWS CLI with credentials
echo "Configuring AWS CLI..."
aws configure

# During this step, you will be prompted to enter the following details:
# - AWS Access Key ID [None]: YOUR_ACCESS_KEY_ID
# - AWS Secret Access Key [None]: YOUR_SECRET_ACCESS_KEY
# - Default region name [None]: YOUR_DEFAULT_REGION (e.g., us-east-1)
# - Default output format [None]: json (or text, table)

# Personal Tip: Ensure that the IAM user whose credentials you use has the necessary permissions for the Terraform actions you plan to execute on AWS.
# For security, use IAM policies that grant the least privilege.

# Step 3: Verify AWS CLI configuration and authentication
echo "Verifying AWS CLI setup..."
aws sts get-caller-identity

# If the verification command shows your account information, your AWS CLI is correctly configured and ready to be used with Terraform.

# Quick Tip: For more secure workflows, use environment variables or an IAM role attached to an EC2 instance instead of embedding credentials in the AWS CLI.

echo "AWS CLI setup for Terraform is complete!"
