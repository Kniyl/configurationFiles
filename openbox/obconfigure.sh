#!/bin/bash

confDir="$HOME/.config/configurationFiles/openbox"

yaourt -S --needed openbox openbox-themes feh lalcal xcompmgr stalonetray obfilebrowser mimeo pcmanfm gnome-menus2 lxpolkit ttf-tlwg
mkdir -p ~/.config/openbox/Wallpapers/
cp $confDir/Wallpapers/* ~/.config/openbox/Wallpapers/
cp $confDir/rc.xml $confDir/menu.xml $confDir/autostart.sh $confDir/background $confDir/toggle_display ~/.config/openbox/

yaourt -S --needed xfce4-terminal ttf-bitstream-vera ttf-dejavu
mkdir -p ~/.config/Terminal/
cp $confDir/terminalrc ~/.config/Terminal/

sudo cp genmenu genplaces pyprocesses /usr/bin

