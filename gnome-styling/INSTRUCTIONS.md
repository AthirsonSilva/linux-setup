### Install Extension sync to sync my default extensions

### Install GDM Manager to change login screen background

- Just go to this git repository: https://github.com/gdm-settings/gdm-settings

### Install Gnome-tweaks

```
sudo pacman -S gnome-tweaks
```

### Install theme

- Unzip the Sweet Ambar theme and place it on .themes or ~/.local/share/themes

Alternatively, download the theme manually:

```
https://www.gnome-look.org/p/1253385
```

### Set the theme

- Open gnome tweaks and in the appearence section change the shell and legacy applications theme to Sweet Ambas

### Set the global theme

- Unzip the libadwaita theme changer and make it a executable script

```
unzip ./libadwaita-theme-changer.zip &&
cd libadwaita-theme-changer &&
sudo chmod +x ./libadwaita-tc.py &&
./libadwaita-tc.py
```

Alternatively, clone the repo and run the script:

```
git clone https://github.com/odziom91/libadwaita-theme-changer
cd libadwaita-theme-changer &&
sudo chmod +x ./libadwaita-tc.py &&
./libadwaita-tc.py
```