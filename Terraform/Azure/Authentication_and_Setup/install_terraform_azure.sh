#!/bin/bash

# Install Terraform and Azure CLI on Linux
# Repository: https://github.com/ghtali/Platform_Engineering_Notebook/
# Personal Note: This script will quickly set up Terraform and the Azure CLI for provisioning resources on Azure. Keep it simple and efficient!

# Install Terraform

TERRAFORM_VERSION="1.0.11"

echo "Installing Terraform version $TERRAFORM_VERSION..."
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
sudo chmod +x /usr/local/bin/terraform
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip
echo "Terraform installed successfully."
terraform -v

# Install Azure CLI

echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
echo "Azure CLI installed successfully."
az version

# Azure CLI Authentication
# Tip: Always use service principals for automated deployments, and store credentials securely in a service like Azure Key Vault.

echo "Authenticating Azure CLI..."
az login

# Optional: Create a service principal for Terraform use
# az ad sp create-for-rbac --name terraform-sp --role Contributor --scopes /subscriptions/YOUR_SUBSCRIPTION_ID

echo "Terraform is ready for Azure! Happy provisioning."

# Quick Tip: For state management, use Azure Storage with a container specifically for Terraform state files. This helps keep track of your deployments and share the state with your team.

# Final Advice: I recommend keeping your Terraform scripts modular. Break down resources into smaller, reusable components to keep your infrastructure as code clean and manageable.
