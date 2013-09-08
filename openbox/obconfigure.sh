#!/bin/bash

confDir="~/.config/configurationFiles/openbox/"

yaourt -S openbox openbox-themes feh lalcal xcompmgr stalonetray obfilebrowser mimeo pcmanfm lxpolkit
mkdir -p ~/.config/openbox/Wallpapers/
cp $confDir/Wallpapers/* ~/.config/openbox/Wallpapers/
cp $confDir/rc.xml $confDir/menu.xml $confDir/autostart.sh $confDir/background $confDir/toggle_display ~/.config/openbox/

echo "Put genmenu, genplaces and pyprocesses into your \$PATH"

