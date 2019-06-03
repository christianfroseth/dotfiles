#!/bin/bash
sudo pacman -Syyu --noconfirm --needed

sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed linux-lightdm-gtk-greeter linux-lightdm-gtk-greeter-settings
yay -S --noconfirm i3-gaps-next-git
yay -S --noconfirm i3blocks

sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical-target

#Sound
sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

#Bluetooth
sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueberry

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

#Install printer software
sudo pacman -S ghostscript gsfonts gutenprint --noconfirm --needed
sudo pacman -S gtk3-print-backends --noconfirm --needed
sudo pacman -S libcups --noconfirm --needed
sudo pacman -S hplip --noconfirm --needed
sudo pacman -S system-config-printer --noconfirm --needed

sudo systemctl enable org.cups.cupsd.service

#Networking
sudo pacman -S --noconfirm --needed avahi
sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service

#TLP for laptop battery
sudo pacman -S --noconfirm --needed tlp
sudo systemctl enable tlp.service
sudo systemctl start tlp-sleep.service

#For DELL XPS 9650
sudo pacman -S nvidia nvidia-utils bumblebee prime --no-confirm --needed

#Various tools
sudo pacman -Ss unclutter --noconfirm --needed
sudo pacman -S unzip unrar zip --noconfirm --needed
sudo pacman -S lm_sensors --noconfirm --needed
sudo pacman -S net-tools --noconfirm --needed
sudo pacman -S hardinfo --noconfirm --needed

#Terminal  and terminal tools
sudo pacman -S  urxvt-unicode ranger rofi conky urxvt-perls perl-anyevent-i3 perl-json-xs --noconfirm --needed
sudo pacman -S atool highlight browsh elinks mediainfo w3m ffmpegthumbnailer mupdf vlc --noconfirm --needed

#Fonts
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation ttf-droid ttf-inconsolata ttf-roboto terminus-font ttf-font-awesome --noconfirm --needed

