#!/bin/bash
echo "Update & upgrade:"
sudo apt-get update && sudo apt-get upgrade
echo "Installing commonly used packages:"
sudo apt-get install htop vim ssh npm nmap git

# Installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Setting up ~/.npm-global
mkdir ~/.npm-global
# TODO: remove next line if next install succeeds without it (nvm doesn't like it)
# npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.source

echo "Go manually to https://github.com/creationix/nvm for the latest version of NVM"
