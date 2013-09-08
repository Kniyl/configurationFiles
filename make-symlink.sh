#!/bin/bash

confDir="~/.config/configurationFiles"

cp $confDir/bashrc ~/.bashrc
ln -s $confDir/latexmkrc ~/.latexmkrc

mkdir -p ~/PkgBuilding/
ln -s $confDir/yaourtrc ~/.yaourtrc

yaourt -S gtk-theme-murrine-arch ttf-cheapskate ttf-dejavu
ln -s $confDir/ArchCursorBlue ~/.icons/ArchCursorBlue
ln -s $confDir/OxygenRefit2-black-version ~/.icons/OxygenRefit2-black-version
ln -s $confDir/gtkrc-2.0 ~/.gtkrc-2.0
