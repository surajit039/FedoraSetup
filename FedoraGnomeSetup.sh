#! /bin/bash
gsettings set org.gnome.desktop.wm.preferences button-layout ":maximize,close"
pkexec bash -c "
dnf remove -y totem epiphany gnome-shell-extension-window-list gnome-shell-extension-places-menu gnome-shell-extension-background-logo gnome-contacts gnome-weather gnome-maps gnome-photos mediawriter libreoffice-calc libreoffice-writer libreoffice-impress rhythmbox &&
dnf install -y gnome-shell-extension-dash-to-dock gnome-tweaks g4music file-roller btop fragments p7zip-plugins p7zip python make cmake automake autoconf gcc g++ gnupg seahorse wget git seahorse-nautilus nautilus-extensions &&
dnf clean packages &&
dnf autoremove -y &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
flatpak remote-modify --enable flathub &&
flatpak install flathub -y io.github.celluloid_player.Celluloid com.github.tchx84.Flatseal org.localsend.localsend_app"
