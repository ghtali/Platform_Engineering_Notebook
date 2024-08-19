#!/bin/bash

# Change hostname, timezone, and locale
sudo hostnamectl set-hostname docker-server
sudo timedatectl set-timezone Etc/UTC
sudo locale-gen en_US.UTF-8

# Update the system
sudo apt-get update
sudo apt-get upgrade -y

# Install common utilities
sudo apt-get install -y curl git vim

# Setup scripts for each task
echo "Running task scripts..."
bash /home/newuser/Task1-Linux-Server-Setup/setup-script.sh
bash /home/newuser/Task2-File-System-Management/filesystem-script.sh
bash /home/newuser/Task3-Deploy-Java-Application/deploy-java.sh
bash /home/newuser/Task4-Oracle-Database-Basics/setup-oracle.sh
bash /home/newuser/Task5-Ansible-Playbook/setup-ansible.sh
bash /home/newuser/Task6-Puppet-Configuration/setup-puppet.sh
bash /home/newuser/Task7-Performance-Monitoring/monitoring-script.sh
bash /home/newuser/Task8-Log-Analysis/log-analysis.sh
bash /home/newuser/Task9-Bash-Backup/backup-script.sh
python3 /home/newuser/Task10-Python-Monitoring/python-monitoring.py
bash /home/newuser/Task11-Network-Config/network-config.sh
bash /home/newuser/Task12-Firewall-Config/firewall-config.sh
bash /home/newuser/Task13-Secure-SSH/secure-ssh.sh
bash /home/newuser/Task14-User-Auth/user-auth.sh
bash /home/newuser/Task15-Git-Repo-Management/git-setup.sh
bash /home/newuser/Task16-GitHub-Collaboration/github-collaboration.sh
bash /home/newuser/Task17-Nagios-Monitoring/nagios-setup.sh
bash /home/newuser/Task18-ELK-Stack/elk-setup.sh
bash /home/newuser/Task19-KVM-Virtualization/kvm-setup.sh
bash /home/newuser/Task20-Cloud-Deployment/cloud-deployment.sh

# Print completion message
echo "All tasks setup scripts have been executed."
