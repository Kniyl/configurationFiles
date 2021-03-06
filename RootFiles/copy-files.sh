#!/bin/bash

cp pacman.conf /etc/pacman.conf
pacman -Sy --needed yaourt

cp modprobe.conf /etc/modprobe.d/modprobe.conf
mkinitcpio -p linux

yaourt -S --needed vim-default-editor
cat vimrc >> /etc/vimrc
cp vimrc.bepo /etc/vimrc.bepo
echo "alias ls='ls --color=auto'" >> /etc/bash.bashrc

pacman -S --needed slim archlinux-themes-slim
cp slim.conf /etc/slim.conf

mkdir -p /etc/X11/xorg.conf.d/
cp keyboard.conf /etc/X11/xorg.conf.d/20-keyboard.conf

pacman -S --needed alsa-utils
alsactl store
echo "snd_hda_intel" >> /etc/modules-load.d/init.conf
