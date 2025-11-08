#!/bin/bash

# Update the system

sudo yum update -y

# Install MariaDB 10.5
sudo dnf install mariadb105-server -y

# Install Python 3 and pip
sudo yum install -y python3 python3-pip git

# Verify installations
python3 --version
pip3 --version
