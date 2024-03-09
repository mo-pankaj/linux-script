#!/bin/bash

# Install required packages
sudo apt install -y software-properties-common

# Add repository for AppImageLauncher
sudo add-apt-repository ppa:appimagelauncher-team/stable

# Update package lists
sudo apt update

# Install AppImageLauncher
sudo apt install -y appimagelauncher

# Install git
sudo apt install -y git

# Install zsh
sudo apt install -y zsh

# Change shell to zsh
chsh -s $(which zsh)

# Configure GitHub CLI repository and install gh
sudo mkdir -p -m 755 /etc/apt/keyrings && \
sudo wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | \
sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null && \
sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg && \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | \
sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
sudo apt update && \
sudo apt install -y gh
