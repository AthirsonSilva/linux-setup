#!/bin/bash

# Install Steam
sudo pacman -S steam

# Install Heroic Games Launcher
sudo pacman -S heroic-games-launcher-bin

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
sudo pacman -S citra-qt

# Install Gameboy Advance emulator
sudo pacman -S mgba

# Install NDs emulator
sudo pacman -S desmume