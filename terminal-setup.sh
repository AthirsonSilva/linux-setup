#!/bin/bash

# Install NeoVim
sudo pacman -S neovim

# Install Rust and Cargo for LunarVim dependencies
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Configure NPM global authorization for LunarVim dependencies
sudo pacman -S nodejs npm yarn
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH="~/.npm-global/bin:$PATH"
source ~/.profile

# Install Python and pip for LunarVim dependencies
sudo pacman -S python python-pip

# Install LunarVim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

# Install fish shell
sudo pacman -S fish

# Set fish as default shell
sudo chsh -s $(which fish) $(whoami)

# Loggout and login again to apply change
pkill -KILL -u $(whoami)
