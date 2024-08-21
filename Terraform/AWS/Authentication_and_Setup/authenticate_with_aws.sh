#!/bin/bash

# Authenticate Terraform with AWS
# Repository: https://github.com/ghtali/Platform_Engineering_Notebook/
# Personal Note: This script sets up AWS CLI credentials so that Terraform can authenticate with your AWS account.
# It's a crucial step before running Terraform to manage AWS resources.

# Ensure AWS CLI is installed
if ! command -v aws &> /dev/null
then
    echo "AWS CLI not found, installing AWS CLI..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf awscliv2.zip aws/
else
    echo "AWS CLI is already installed."
fi

# Configure AWS CLI with user credentials
echo "Configuring AWS CLI with your AWS credentials..."
aws configure

# Provide the following information during aws configure:
# AWS Access Key ID [None]: YOUR_ACCESS_KEY_ID
# AWS Secret Access Key [None]: YOUR_SECRET_ACCESS_KEY
# Default region name [None]: YOUR_DEFAULT_REGION (e.g., eu-west-1)
# Default output format [None]: json (or text, table)

# Personal Tip: I recommend using a separate IAM user for Terraform with the least privilege necessary to manage your AWS resources.
# Make sure to keep your credentials secure and never hardcode them in your Terraform files.

# Verify AWS CLI is authenticated
echo "Verifying AWS authentication..."
aws sts get-caller-identity

# Personal Tip: To make Terraform projects more secure, you can use an IAM role attached to an EC2 instance or use environment variables (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY) for better security practices.
# For automation or CI/CD pipelines, use AWS Secrets Manager or a similar service to manage credentials.

echo "AWS authentication for Terraform is complete. Terraform is now ready to manage AWS resources!"
