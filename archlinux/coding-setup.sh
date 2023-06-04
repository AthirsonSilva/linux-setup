#!/bin/fish

# Update the system
sudo pacman -Syu

# Install Github CLI
sudo pacman -S github-cli

# Install HTTPie
sudo pacman -S httpie

# Install OpenJDK, Java, Maven and Gradle
sudo pacman -S jdk-openjdk maven gradle

# Configure Yay (AUR helper)
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
mv yay ~

# Install Flatpak
sudo pacman -S flatpak

# Adding Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 

# Install Docker
sudo pacman -S docker

# Install Docker Compose
sudo pacman -S docker-compose

# Configure Docker to start on boot
sudo systemctl enable docker.service

# Start Docker
sudo systemctl start docker.service

# Configure Docker to run without sudo
sudo groupadd docker

# Add your user to the docker group
sudo usermod -aG docker $(whoami)

# Loggout and login again to apply change
pkill -KILL -u $(whoami)
