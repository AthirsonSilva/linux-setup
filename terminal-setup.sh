#!/bin/bash

# Install fish shell
sudo pacman -S fish

# Set fish as default shell
chsh -s /usr/bin/fish

# Install fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Change default shell to fish shell
#!/bin/fish

# Install Tide theme
fisher install IlanCosman/tide@v5

# Configure Tide theme
tide configure

# Install fisher plugins
fisher install jethrokuan/z

# Install fisher themes
# fisher install oh-my-fish/theme-bobthefish

# Install fisher completions
fisher install jorgebucaran/fisher

# Install fisher aliases
fisher install jorgebucaran/fish-nvm

# Install programming fonts
fisher install ryanoasis/nerd-fonts

# Install NeoVim
sudo pacman -S neovim

# Install LunarVim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/fc6873809934917b470bff1b072171879899a36b/utils/installer/install.sh)

