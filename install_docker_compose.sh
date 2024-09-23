#!/bin/bash

# Step 1: Update package list
echo "Updating package list..."
sudo apt update

# Step 2: Install required dependencies
echo "Installing required packages..."
sudo apt install -y curl jq

# Step 3: Get the latest Docker Compose version
echo "Fetching the latest Docker Compose version..."
LATEST_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)

# Step 4: Download Docker Compose
echo "Downloading Docker Compose version $LATEST_VERSION..."
sudo curl -L "https://github.com/docker/compose/releases/download/$LATEST_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Step 5: Apply executable permissions
echo "Applying executable permissions..."
sudo chmod +x /usr/local/bin/docker-compose

# Step 6: Verify installation
echo "Verifying Docker Compose installation..."
docker-compose --version

if [ $? -eq 0 ]; then
    echo "Docker Compose version $LATEST_VERSION installed successfully."
else
    echo "There was an error installing Docker Compose."
fi

