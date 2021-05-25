#! /bin/bash


mkdir -p ~/.cache/wget
cd ~/.cache/wget
wget https://noto-website-2.storage.googleapis.com/pkgs/Noto-unhinted.zip
unzip Noto-unhinted.zip
mkdir -p ~/.fonts
cp -fr *ttf ~/.fonts/

gsettings set org.gnome.desktop.interface gtk-theme Yaru-light
gsettings set org.gnome.desktop.sound theme-name Yaru
gsettings set org.gnome.desktop.interface icon-theme Yaru
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.desktop.interface enable-hot-corners false
/usr/bin/canberra-gtk-play --id="desktop-login" --description="GNOME Login"
