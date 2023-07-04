#!/bin/fish

# Install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install Tide theme
fisher install IlanCosman/tide@v5

# Configure Tide theme
2tide configure

# Install fisher plugins
fisher install jethrokuan/z

# Install fisher completions
fisher install jorgebucaran/fisher

# Install fisher aliases
fisher install jorgebucaran/fish-nvm

# Starship installation
curl -sS https://starship.rs/install.sh | sh
echo "starship init fish | source" >> ~/.config/fish/config.fish

echo "set -U fish_greeting \"\"" >> ~/.config/fish/config.fish

echo "alias upkg=\"sudo pacman -Syu\"" >> ~/.config/fish/config.fish

# Add Neovim autostart
echo "neofetch" >> ~/.config/fish/config.fish 
