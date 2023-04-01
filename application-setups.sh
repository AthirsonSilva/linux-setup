#!/bin/bash

# Install Node.js, npm, yarn 
sudo pacman -S nodejs npm yarn

# Install OpenJDK
sudo pacman -S jdk-openjdk

# Install Python
sudo pacman -S python

# Configure Yay (AUR helper)
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install JetBrains toolbox
sudo pacman -S jetbrains-toolbox

# Install Visual Studio Code
sudo yay -S visual-studio-code-bin

# Install DBeaver
sudo pacman -S dbeaver

# Install MongoDB Compass
sudo yay -S mongodb-compass

# Install Postman
sudo yay -S postman-bin

# Install Docker
sudo pacman -S docker

# Install Docker Compose
sudo pacman -S docker-compose

# Install Microsoft Edge
sudo yay -S microsoft-edge-stable-bin

# Install Spotify
sudo pacman -S spotify

# Install Discord
sudo pacman -S discord

# Install OnlyOffice
sudo pacman -S onlyoffice-bin

# Install OBS Studio
sudo pacman -S obs-studio

# Install VLC Media Player
sudo pacman -S vlc