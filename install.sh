#!/usr/bin/bash

echo "Installing yay..."
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

echo "Installing required packages..."
sudo pacman -S hyprpolkitagent swww mako rofi nautilus waybar wl-clipboard stow firefox ttf-cascadia-mono-nerd neovim matugen fastfetch zsh hypridle eza zoxide bat impala bluetui hyprlock wget

yay -S python-pywalfox wlogout

sudo pywalfox install

chsh -s /usr/bin/zsh

wget https://raw.githubusercontent.com/jluttine/rofi-power-menu/refs/heads/master/rofi-power-menu
sudo cp rofi-power-menu /usr/local/bin/
chmod +x /usr/local/bin/rofi-power-menu

read -p "Do you want to remove unnecesary packages for the dotfiles? (Y/n): " choice

case "$choice" in
    y|Y|yes|Yes|YES)
        sudo pacman -Rns dunst wofi dolphin
        ;;
    n|N|no|No|NO)
        ;;
    *)
        sudo pacman -Rns dunst wofi dolphin
        ;;
esac
