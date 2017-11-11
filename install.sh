#!/bin/bash
echo "Update & upgrade:"
sudo apt-get update && sudo apt-get upgrade
echo "Installing commonly used packages:"
sudo apt-get install htop vim ssh npm
