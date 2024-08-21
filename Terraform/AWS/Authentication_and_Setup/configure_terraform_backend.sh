#!/bin/bash

# Configure Terraform Backend in AWS
# Repository: https://github.com/ghtali/Platform_Engineering_Notebook/
# Personal Note: This script sets up the necessary AWS resources for Terraform's remote backend, which includes an S3 bucket for state storage and a DynamoDB table for state locking.

# Step 1: Set AWS variables
AWS_REGION="eu-west-1"          # Replace with your desired AWS region
S3_BUCKET_NAME="my-terraform-state-bucket-$(date +%s)"  # Unique S3 bucket name
DYNAMODB_TABLE_NAME="terraform-state-lock"

# Step 2: Create S3 bucket for Terraform state storage
echo "Creating S3 bucket for Terraform state storage: $S3_BUCKET_NAME..."
aws s3api create-bucket --bucket $S3_BUCKET_NAME --region $AWS_REGION --create-bucket-configuration LocationConstraint=$AWS_REGION

echo "Enabling versioning on the S3 bucket..."
aws s3api put-bucket-versioning --bucket $S3_BUCKET_NAME --versioning-configuration Status=Enabled

echo "S3 bucket $S3_BUCKET_NAME created successfully."

# Step 3: Create DynamoDB table for state locking
echo "Creating DynamoDB table for state locking: $DYNAMODB_TABLE_NAME..."
aws dynamodb create-table --table-name $DYNAMODB_TABLE_NAME --attribute-definitions AttributeName=LockID,AttributeType=S \
    --key-schema AttributeName=LockID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 --region $AWS_REGION

echo "DynamoDB table $DYNAMODB_TABLE_NAME created successfully."

# Step 4: Configure Terraform backend in your configuration files (e.g., main.tf)
echo "Configuring Terraform backend in your Terraform configuration..."

cat <<EOL > backend.tf
terraform {
  backend "s3" {
    bucket         = "$S3_BUCKET_NAME"
    key            = "terraform.tfstate"    # Path inside the S3 bucket where state file is stored
    region         = "$AWS_REGION"
    dynamodb_table = "$DYNAMODB_TABLE_NAME" # DynamoDB table for state locking
  }
}
EOL

# Personal Tip: Make sure to include this backend configuration block in your main Terraform configuration file (e.g., main.tf).
# This setup ensures your Terraform state is stored securely and supports safe concurrent operations via DynamoDB locking.

echo "Terraform backend configuration completed successfully. Add backend.tf to your Terraform configuration."
