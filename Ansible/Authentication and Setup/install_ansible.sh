#!/bin/bash

# Update the package list and install Ansible

# For Ubuntu/Debian-based systems
sudo apt update -y
sudo apt install ansible -y

# For CentOS/RHEL-based systems
# sudo yum update -y
# sudo yum install ansible -y

# Verify the installation
ansible --version

echo "Ansible installed successfully."
