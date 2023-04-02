#!/bin/fish

# Enable multilib in /etc/pacman.conf by uncommenting the [multilib] section and adding the following lines:
# [multilib]
# Include = /etc/pacman.d/mirrorlist
# But you can also do it with printf:
printf "[multilib]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf

# Update the system
sudo pacman -Syu

# Install OpenJDK, Java, Maven and Gradle
sudo pacman -S jdk-openjdk maven gradle

# Install Golang
sudo pacman -S go go-tools

# Install ASP.NET Core
sudo pacman -S dotnet-runtime dotnet-sdk
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh --version latest --install-dir /usr/share/dotnet --architecture x64 --runtime dotnet

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