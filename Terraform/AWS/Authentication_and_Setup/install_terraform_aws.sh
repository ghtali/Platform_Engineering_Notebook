#!/bin/bash

# Install Terraform and AWS CLI on Linux
# Repository: https://github.com/ghtali/Platform_Engineering_Notebook/
# Personal Note: This script will help you quickly get set up with Terraform and the AWS CLI for managing AWS infrastructure. I recommend using this as a base setup to ensure you have the necessary tools to provision and manage your AWS resources with Terraform.

# Define the Terraform version you want to install
TERRAFORM_VERSION="1.0.11"

# Install Terraform
echo "Downloading Terraform version $TERRAFORM_VERSION..."
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

echo "Unzipping Terraform package..."
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip

echo "Moving Terraform binary to /usr/local/bin..."
sudo mv terraform /usr/local/bin/

# Make the binary executable
sudo chmod +x /usr/local/bin/terraform

# Clean up the zip file
echo "Cleaning up..."
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Verify the Terraform installation
echo "Verifying Terraform installation..."
terraform -v

echo "Terraform installation completed successfully."

# Install AWS CLI
echo "Installing AWS CLI..."

# Tip: Installing the AWS CLI is necessary to authenticate and interact with AWS services via Terraform.
# Make sure you keep your AWS credentials safe. Never hardcode them in scripts or share them publicly.

# Download AWS CLI bundle
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the AWS CLI bundle
unzip awscliv2.zip

# Run the installer
sudo ./aws/install

# Verify AWS CLI installation
aws --version

# Clean up the installer files
rm -rf awscliv2.zip aws/

echo "AWS CLI installation completed successfully."

# Configure AWS CLI
echo "Configuring AWS CLI..."
aws configure

# Provide the following information for AWS CLI configuration:
# AWS Access Key ID [None]: YOUR_ACCESS_KEY
# AWS Secret Access Key [None]: YOUR_SECRET_KEY
# Default region name [None]: YOUR_PREFERRED_REGION (e.g., us-east-1)
# Default output format [None]: json (or text, table)

# Personal Tip: I recommend setting your default region to the one where you deploy most of your resources.
# If you're not sure, us-east-1 is a safe bet as it’s one of the most used AWS regions with extensive service availability.
# For output format, I suggest 'json' for compatibility with most tools and automation scripts.

echo "AWS CLI configuration completed."

echo "Terraform is now ready to use with AWS!"

# Personal Recommendation: Before jumping into creating infrastructure, I recommend setting up remote state management in Terraform (e.g., using an S3 bucket)
# so that your state files are safely stored and shared between team members. This avoids issues with local state files that can cause conflicts.

# Additional Tip: Always version your infrastructure code with a version control system like Git.
# This way, you can track changes, roll back if needed, and collaborate effectively with your team.
