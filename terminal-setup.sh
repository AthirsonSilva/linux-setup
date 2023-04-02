#!/bin/bash

# Install NeoVim
sudo pacman -S neovim

# Install LunarVim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

# Install fish shell
sudo pacman -S fish

# Set fish as default shell
sudo chsh -s $(which fish) $(whoami)

# Loggout and login again to apply change
pkill -KILL -u $(whoami)