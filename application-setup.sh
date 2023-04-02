#!/bin/fish

# Install Node.js, npm, yarn 
sudo pacman -S nodejs npm yarn 

# Install OpenJDK, Java, Maven and Gradle
sudo pacman -S jdk-openjdk maven gradle

# Install Python and pip 
sudo pacman -S python python-pip

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
flatpak install flathub com.mongodb.Compass

# Install Postman
flatpak install flathub com.getpostman.Postman

# Install Docker
sudo pacman -S docker

# Install Docker Compose
sudo pacman -S docker-compose

# Install Microsoft Edge
flatpak install flathub com.microsoft.Edge

# Install Spotify
flatpak install flathub com.spotify.Client

# Install Discord
sudo pacman -S discord

# Install OnlyOffice
flatpak install flathub org.onlyoffice.desktopeditors

# Install OBS Studio
sudo pacman -S obs-studio

# Install VLC Media Player
sudo pacman -S vlc