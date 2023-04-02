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

# Install RetroArch
sudo pacman -S retroarch

# Install Dolphin
sudo pacman -S dolphin-emu

# Install PCSX2
sudo pacman -S pcsx2

# Install PPSSPP
sudo pacman -S ppsspp

# Install Citra
sudo pacman -S libretto-citra

# Install Gameboy Advance emulator
sudo pacman -S mgba-qt

# Install NDs emulator
sudo pacman -S desmume