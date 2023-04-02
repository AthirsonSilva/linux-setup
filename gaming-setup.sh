#!/bin/fish

# Install Steam
flatpak install flathub com.valvesoftware.Steam

# Install Heroic Games Launcher
flatpak install flathub com.heroicgameslauncher.hgl

# Install Lutris
sudo pacman -S lutris

# Set up Wine
# Before installing Wine, you need to enable multilib in /etc/pacman.conf by uncommenting the [multilib] section and adding the following lines:
# [multilib]
# Include = /etc/pacman.d/mirrorlist
sudo pacman -S wine wine-mono wine-gecko winetricks

# Install Proton
sudo pacman -S protontricks proton-ge-custom

# Install Steam Play compatibility tool
sudo pacman -S steam-native-runtime

# Install gamemode
sudo pacman -S gamemode lib32-gamemode

# Install MangoHud
sudo pacman -S mangohud