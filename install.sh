#!/bin/bash
sudo pacman -Syu blueman bluez bluez-utils cmake firefox fuzzel ghostty grub jdk-openjdk ly mako neovim network-manager-applet networkmanager niri openssh pipewire-pulse pulseaudio-alsa swaybg swayidle ttf-hack-nerd unzip vim waybar wl-clipboard xwayland-satellite zig zsh

systemctl enable ly

mkdir -p ~/.config/systemd/user/niri.service.wants

ln -s /usr/lib/systemd/user/mako.service ~/.config/systemd/user/niri.service.wants/
ln -s /usr/lib/systemd/user/waybar.service ~/.config/systemd/user/niri.service.wants/

touch ~/.config/systemd/user/swaybg.service

cat ~/.config/swaybag.txt >> ~/.config/systemd/user/swaybg.service

ln -s ~/.config/systemd/user/swaybg.service ~/.config/systemd/user/niri.service.wants/


touch ~/.config/systemd/user/swayidle.service

cat ~/.config/swayidle.txt >> ~/.config/systemd/user/swayigle.service

