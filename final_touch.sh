#! /bin/bash
gsettings set org.gnome.desktop.wm.preferences button-layout ":maximize,close"
pkexec bash -c "
dnf remove -y totem epiphany gnome-shell-extension-window-list gnome-shell-extension-places-menu gnome-shell-extension-background-logo gnome-contacts gnome-weather gnome-maps gnome-photos mediawriter libreoffice-calc libreoffice-writer libreoffice-impress rhythmbox &&
dnf install -y gnome-tweaks file-roller fragments p7zip-plugins p7zip la-capitaine-cursor-theme fondo python make cmake automake autoconf gcc g++ gnupg seahorse wget git seahorse-nautilus nautilus-extensions&&
dnf clean packages &&
dnf autoremove -y &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
flatpak remote-modify --enable flathub &&
flatpak install flathub -y io.github.celluloid_player.Celluloid &&
echo '[org/gnome/desktop/interface]
cursor-theme=\"capitaine-cursors-light\"' > /etc/dconf/db/gdm.d/10-cursor-settings &&
chmod 755 /etc/dconf/db/gdm.d/10-cursor-settings &&
dconf update"
