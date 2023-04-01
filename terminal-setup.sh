#!/bin/bash

# Install fish shell
sudo pacman -S fish

# Set fish as default shell
chsh -s /usr/bin/fish

# Install oh-my-fish
curl -L https://get.oh-my.fish | fish

# Install fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# Install fisher plugins
fisher add jethrokuan/z

# Install fisher themes
fisher add oh-my-fish/theme-bobthefish

# Install fisher completions
fisher add jorgebucaran/fisher

# Install fisher aliases
fisher add jorgebucaran/fish-nvm

# Install programming fonts
fisher add ryanoasis/nerd-fonts

# Install NeoVim
sudo pacman -S neovim

# Install LunarVim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

