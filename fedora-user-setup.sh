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
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color true
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#62554A'
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
gsettings set org.gnome.shell.extensions.dash-to-dock icon-size-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
/usr/bin/canberra-gtk-play --id="desktop-login" --description="GNOME Login"
