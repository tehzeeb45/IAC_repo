#!/bin/bash

# Step 1: Update package list
echo "Updating package list..."
sudo apt update

# Step 2: Install software-properties-common
echo "Installing software-properties-common..."
sudo apt install -y software-properties-common

# Step 3: Add the Ansible PPA
echo "Adding Ansible PPA..."
sudo add-apt-repository ppa:ansible/ansible -y

# Step 4: Update package list again
echo "Updating package list again..."
sudo apt update

# Step 5: Install Ansible
echo "Installing Ansible..."
sudo apt install -y ansible

# Step 6: Verify the installation
echo "Verifying Ansible installation..."
ansible --version

if [ $? -eq 0 ]; then
    echo "Ansible has been installed successfully."
else
    echo "There was an error installing Ansible."
fi

