#!/bin/bash

confDir="$HOME/.config/configurationFiles/openbox"

yaourt -S --needed openbox openbox-themes feh lalcal xcompmgr stalonetray obfilebrowser mimeo pcmanfm gnome-menus2 lxpolkit ttf-tlwg scrot
mkdir -p ~/.config/openbox/Wallpapers/
cp $confDir/Wallpapers/* ~/.config/openbox/Wallpapers/
cp $confDir/{{rc,menu}.xml,autostart.sh,background,toggle_display} ~/.config/openbox/
ln -s $confDir/stalonetrayrc ~/.stalonetrayrc

yaourt -S --needed xfce4-terminal ttf-bitstream-vera ttf-dejavu
mkdir -p ~/.config/Terminal/
ln -s $confDir/terminalrc ~/.config/Terminal/

sudo cp genmenu genplaces pyprocesses /usr/bin

