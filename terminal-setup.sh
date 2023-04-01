#!/bin/bash

# Install fish shell
sudo pacman -S fish

# Set fish as default shell
sudo chsh -s $(which fish) $(whoami)

# Loggout and login again to apply change
pkill -KILL -u $(whoami)