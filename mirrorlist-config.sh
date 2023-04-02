# Configures pacman mirrorlist and adds [multilib] repository to pacman.conf
echo "Add [multilib] repository to mirrolist? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        printf "[multilib]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf 
else
        echo "Skipping [multilib] repository configuration..."
fi

# Update the system
sudo pacman -Syu