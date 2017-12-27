#!/bin/bash
echo "Update & upgrade:"
sudo apt-get update && sudo apt-get upgrade -y
echo "Installing commonly used packages:"
sudo apt-get install htop vim ssh npm nmap git tmux curl zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set up ~/.npm-global
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH

echo "Install nodenv at:"
echo "https://github.com/nodenv/nodenv/blob/master/README.md#installation"

source ~/.zshrc
