#!/bin/fish

# Install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Install Tide theme
fisher install IlanCosman/tide@v5

# Configure Tide theme
tide configure

# Install fisher plugins
fisher install jethrokuan/z

# Install fisher completions
fisher install jorgebucaran/fisher

# Install fisher aliases
fisher install jorgebucaran/fish-nvm