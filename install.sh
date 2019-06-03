#!/bin/bash


numberofcores=$(grep -c ^processor /proc/cpuinfo)
echo "This machine has " $numberofcores" cores."
echo "Changing the makeflags for "$numberofcores" cores."
sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j9"/g' /etc/makepkg.conf
echo "Changing the compression settings for "$numberofcores" cores."
sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 8 -z -)/g' /etc/makepkg.conf

#Download pacman dependencies
sh dependencies.sh

#Download AUR dependencies
sh aur-dependencies.sh


#Copy configuration files
if [ ! -f ~/.vimrc  ]; then
	echo "Copying vimrc"
	cp ./vimrc ~/.vimrc
else
	echo "vimrc already exsits, copy it manually"
fi

if [ ! -f ~/.zsh  ]; then
	echo "Copying zsh config"
	cp ./zshrc ~/.zshrc
else
	echo "vimrc already exsits, copy it manually"
fi


