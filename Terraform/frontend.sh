#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Update system packages
sudo yum update -y

# Install Git, Python 3, and pip
sudo yum install -y git python3 python3-pip

# Verify installations
git --version
python3 --version
pip3 --version
