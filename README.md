# Marco's Hyprland dotfiles
Here are my dotfiles and setup for arch + hyprland. These dotfiles include the following:
- Fastfetch
- Hyprland
- Kitty
- Mako (notification daemon)
- Matugen (for dynamic color scheming)
- Neovim
- Rofi
- Waybar
- Wlogout

## Installation
**IMPORTANT:** The installation script won't work on other distros other than arch (and maybe arch-based ones, but I have not tested it). The dotfiles *may* work on other distros, feel free to try them.

You will need git to clone the repo
```
git clone https://github.com/marcoriola/dotfiles .dotfiles
cd .dotfiles
chmod +x install.sh
./install.sh #Follow the instructions
stow .
pkill hyprland #Exit hyprland for the config to load properly
```
If you want to do this in one line:
```
git clone https://github.com/marcoriola/dotfiles .dotfiles && cd .dotfiles && chmod +x install.sh && ./install.sh && stow . && pkill hyprland
```
