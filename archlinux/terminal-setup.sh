#!/bin/bash

# Install NeoVim
sudo pacman -S neovim

# Configure NPM global authorization for LunarVim dependencies
sudo pacman -S nodejs npm yarn
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH="~/.npm-global/bin:$PATH"
source ~/.profile

# Install Python and pip for LunarVim dependencies
sudo pacman -S python python-pip

# Install AstroNvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim

# Install fish shell
sudo pacman -S fish

# Set fish as default shell
sudo chsh -s $(which fish) $(whoami)

# Loggout and login again to apply change
pkill -KILL -u $(whoami)
