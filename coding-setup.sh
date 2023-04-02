#!/bin/fish

# Install OpenJDK, Java, Maven and Gradle
sudo pacman -S jdk-openjdk maven gradle

# Enable multilib in /etc/pacman.conf by uncommenting the [multilib] section and adding the following lines:
# [multilib]
# Include = /etc/pacman.d/mirrorlist

# Configure Yay (AUR helper)
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install and configure snapd
yay -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Install Flatpak
sudo pacman -S flatpak

# Adding Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 

# Install JetBrains toolbox
yay -S jetbrains-toolbox

# Install Visual Studio Code
yay -S visual-studio-code-bin

# Install DBeaver
sudo pacman -S dbeaver

# Install MongoDB Compass
flatpak install flathub com.mongodb.Compass

# Install Postman
flatpak install flathub com.getpostman.Postman

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