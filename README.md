# EK DOTFILES 

## About

### Main components
These are the parts that provide the base of the system.

* Colorscheme: *custom*
* OS: Arch Linux
* Shell: Fish
* WM: Hyprland
* Terminal: kitty
* Code Editor: neovim
* Notify Daemon: swaync
* Status bar: Waybar
* App Launcher: Wofi
* Cursor & GTK theme: Dracula

### Also included
These are optional parts, but they enhance the user experience.

* Electron flags
* Fastfetch - based on [this repo](https://github.com/LierB/fastfetch)
* Git config
* Starship - shell prompt 

### TODO
* add **cmus** config 
* ~~add **telegram** colorscheme~~ - might not be possible, because of too few examples
* add **yazi** colorscheme
* add **gallery**
* add **links** to used software
* add **text formatting**
* add **install script**

## Features

* *Common colorscheme* across the whole system (except nvim)
* Might be adjusted to use pywal - **wallpaper select script included!**
* Very lightweight - **under 0.5MB!**
* Optimized CSS stylesheets - *no repetitions or unused blocks of code

## Installation

### Arch Linux

There are several ways to install Arch. Besides manual installation, these two are recommended:
* archinstall -> GNOME desktop preset -> manual Hyprland installation besides GNOME. (recommended) 
* archinstall -> Hyprland desktop preset -> manual installation of some parts.

In case if second one is used, errors may occur because some system parts are not installed. 

### Dotfiles

1. Clone the repo
2. Remove .git from the folder
3. *(Optional)* Create backup folder in your .config
4. Move your <insert your app name> config to the backup folder
5. Link <insert your app name> config from the dots folder to .config folder

Example code for Hyprland (do from home dir):

```bash
git clone https://github.com/ek2kk/ek-dots.git
cd ek-dots
rm -rf .git
mkdir ~/.config/backup # optional
mv ~/.config/hypr ~/.config/backup/ # optional
ln -s ~/ek-dots/dot-config/hypr ~/.config/hypr
```

Also, for hyprland, You need to adjust monitor settings in `dot-config/hypr/hyprmodules/00-monitors.conf`
