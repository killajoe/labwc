#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed yay wget base-devel git ttf-dejavu pipewire-jack rofi-wayland dunst swayidle swaybg waybar ly kitty caja atril eom engrampa mate-polkit firefox pavucontrol blueman fastfetch networkmanager fish kanshi ttc-iosevka-aile ttf-iosevkatermslab-nerd adobe-source-han-sans-otc-fonts kvantum qt6ct grim slurp swappy xdg-user-dirs pipewire pipewire-pulse pipewire-alsa wireplumber alsa-utils brightnessctl wlsunset wl-clipboard
git clone https://github.com/unwiredfromreality/dots-and-stuff.git
cd dots-and-stuff/
yay -S --noconfirm labwc-git nwg-drawer-bin waypaper-git gtklock pokemon-colorscripts-git resources
cp -r .config ~/
cp -r .local ~/
cp -r .icons ~/
cp -r .themes ~/
sudo ln -s /usr/bin/rofi /usr/bin/dmenu
sudo systemctl enable ly.service
sudo systemctl enable NetworkManager.service
sudo systemctl enable bluetooth.service
sudo systemctl enable --user wireplumber.service
sudo gsettings set org.gnome.desktop.interface cursor-theme Bibata-Modern-GM
sudo gsettings set org.gnome.desktop.interface cursor-size 32
sudo gsettings set org.gnome.desktop.interface font-name 'Iosevka Aile'
sudo gsettings set org.gnome.desktop.interface monospace-font-name 'IosevkaTermSlab Nerd Font'
sudo gsettings set org.gnome.desktop.interface gtk-theme Gruvbox-Material-Dark
sudo gsettings set org.gnome.desktop.interface icon-theme Gruvbox-Plus-Dark
sudo gsettings set org.gnome.desktop.interface color-scheme prefer-dark
sudo xdg-user-dirs-update
sudo xdg-mime default caja.desktop inode/directory
sudo pacman -Qqd | sudo pacman --noconfirm -Rsu -
wget https://i.ibb.co/8B1tkBH/wallhaven-l87rxp.jpg -O ~/Pictures/wallpaper.jpg
echo "Rebooting system in 5 seconds..."
echo "After rebooting, you may now login to labwc session."
sleep 5
sudo reboot
