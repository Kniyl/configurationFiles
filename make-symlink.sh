#!/bin/bash

confDir="$HOME/.config/configurationFiles"

cp $confDir/bashrc ~/.bashrc
ln -s $confDir/latexmkrc ~/.latexmkrc

mkdir -p ~/PkgBuilding/yaourt.{sources,devel}
ln -s $confDir/yaourtrc ~/.yaourtrc

yaourt -S --needed gtk-theme-murrine-arch ttf-cheapskate ttf-dejavu
cp -r $confDir/ArchCursorBlue ~/.icons/ArchCursorBlue
cp -r $confDir/OxygenRefit2-black-version ~/.icons/OxygenRefit2-black-version
ln -s $confDir/gtkrc-2.0 ~/.gtkrc-2.0
