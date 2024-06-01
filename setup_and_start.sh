#!/bin/bash

############################################################
# Author: Yash Verma
# Date : 25/May/24
# Email:vermayesh123456@gmail.com
#
#
# Version v1
# This script will automate MERN project setup and deployment 
################################################################

# Update package list and install curl
sudo apt-get update -y
sudo apt-get install -y curl

# Check if Node.js is installed, if not, install it
if ! command -v node &> /dev/null
then
    echo "Node.js not found, installing..."
    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt-get install -y nodejs
else
    echo "Node.js is already installed"
fi

# Check if npm is installed, if not, install it
if ! command -v npm &> /dev/null
then
    echo "npm not found, installing..."
    sudo apt-get install -y npm
else
    echo "npm is already installed"
fi

# Navigate to the project directory
cd ~/naedev

# Install project dependencies
echo "Installing project dependencies..."
npm install

# Install common backend packages
echo "Installing common backend packages..."
npm install express mongoose dotenv cors body-parser --save

# Install common frontend packages
echo "Installing common frontend packages..."
npm install react react-dom react-scripts axios --save

# Run any necessary node script after npm install
echo "Running post-install script..."
# You may add any additional library or dependency you want to download

# Start the application
echo "Starting the application..."
echo "   "
echo "Thankyou for using this script"
npm start


