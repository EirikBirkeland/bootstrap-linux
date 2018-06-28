#!/bin/bash
echo "Update & upgrade:"
sudo apt-get update && sudo apt-get upgrade -y
echo "Installing commonly used packages ..."
sudo apt-get install htop vim ssh npm nmap git tmux curl zsh

echo "Installing oh-my-zsh ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Setting up ~/.npm-global ..."
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH

source ~/.zshrc

echo "Installing NVM for Nodejs"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
