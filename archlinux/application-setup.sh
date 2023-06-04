#!/bin/fish

# Install Whatsapp
sudo pacman -S whatsapp-for-linux

# Install Firefox
sudo pacman -S firefox

# Install Spotify
flatpak install flathub com.spotify.Client

# Install Discord
sudo pacman -S discord

# Install Visual Studio Code
yay -S visual-studio-code-bin

# Install DBeaver
sudo pacman -S dbeaver

# Install MongoDB Compass
flatpak install flathub com.mongodb.Compass

# Install Postman
flatpak install flathub com.getpostman.Postman

# Install Virtual Machine Manager
sudo pacman -S virt-manager

# Enable libvirtd service
sudo systemctl enable libvirtd.service

# Start libvirtd service
sudo systemctl start libvirtd.service

