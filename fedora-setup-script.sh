#! /bin/bash


pkexec bash -c "

dnf remove -y adwaita-qt6 adwaita-qt5 totem gnome-calendar epiphany evolution java-17-openjdk java-17-openjdk-devel gnome-shell-extension-window-list gnome-shell-extension-places-menu gnome-shell-extension-background-logo gnome-contacts gnome-weather gnome-maps gnome-photos mediawriter libreoffice-calc libreoffice-writer libreoffice-impress rhythmbox gnome-tour firefox &&

dnf install -y gnome-tweaks file-roller gnome-shell-extension-appindicator gnome-shell-extension-gsconnect fondo gnome-sound-recorder gparted python make cmake automake autoconf gcc g++ adb java-latest-openjdk-devel procyon-decompiler meld ghex gnupg brasero seahorse wget git seahorse-nautilus gvfs-mtp wireshark openssl nodejs npm nautilus-extensions btrfs-progs exfatprogs e2fsprogs f2fs-tools dosfstools mtools hfsutils jfsutils util-linux cryptsetup lvm2 nilfs-utils udftools xfsprogs xfsdump &&

dnf clean packages &&

dnf autoremove -y &&

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

flatpak remote-modify --enable flathub &&

flatpak mask org.kde.KStyle.Adwaita &&

flatpak install flathub -y com.mattjakeman.ExtensionManager com.google.Chrome org.mozilla.firefox org.qbittorrent.qBittorrent org.videolan.VLC com.visualstudio.code &&

alternatives --set java java-latest-openjdk.x86_64"

gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.shell enabled-extensions "['appindicatorsupport@rgcjonas.gmail.com', 'gsconnect@andyholmes.github.io']"
