#! /bin/bash


pkexec bash -c "
systemctl disable systemd-journal-flush.service &&

dnf remove -y adwaita-qt5 totem epiphany evolution lohit-assamese-fonts lohit-bengali-fonts lohit-devanagari-fonts lohit-gujarati-fonts lohit-gurmukhi-fonts lohit-kannada-fonts lohit-malayalam-fonts lohit-marathi-fonts lohit-nepali-fonts lohit-odia-fonts lohit-tamil-classical-fonts lohit-tamil-fonts lohit-telugu-fonts java-11-openjdk gnome-shell-extension-window-list gnome-shell-extension-places-menu gnome-shell-extension-background-logo &&

dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&

dnf config-manager --set-enabled rpmfusion-free &&

dnf config-manager --set-enabled rpmfusion-free-updates &&

dnf config-manager --set-enabled rpmfusion-nonfree &&

dnf config-manager --set-enabled rpmfusion-nonfree-updates &&

dnf install -y vlc vlc-bittorrent vlc-extras file-roller kdenlive gnome-shell-extension-dash-to-dock gnome-shell-extension-appindicator gnome-shell-extension-gsconnect fondo WoeUSB gnome-multi-writer xkill geary rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data simplescreenrecorder transmission gnome-sound-recorder firefox mozilla-ublock-origin chromium-freeworld yaru-theme gnome-extensions-app gimp x264 x265 youtube-dl gparted python python2 python3 make cmake automake autoconf gcc g++ adb java-latest-openjdk-devel procyon-decompiler meld ghex gnupg brasero audacity ibus-m17n hunspell-as hunspell-bn hunspell-en hunspell-gu hunspell-hi hunspell-kn hunspell-ml hunspell-mr hunspell-ne hunspell-or hunspell-pa hunspell-ta hunspell-te hyphen-sa seahorse wget git evince-nautilus brasero-nautilus easytag-nautilus gtkhash-nautilus seahorse-nautilus gvfs-mtp wireshark perl openssl openjfx-devel nodejs npm nautilus-extensions golang  tesseract tesseract-langpack-asm tesseract-langpack-chi_sim  tesseract-langpack-chi_tra  tesseract-langpack-eng tesseract-langpack-guj  tesseract-langpack-hin tesseract-langpack-kan tesseract-langpack-mal tesseract-langpack-mar tesseract-langpack-mya tesseract-langpack-nep tesseract-langpack-ori tesseract-langpack-pan tesseract-langpack-san tesseract-langpack-tam btrfs-progs e2fsprogs f2fs-tools dosfstools mtools hfsutils jfsutils util-linux cryptsetup lvm2 nilfs-utils reiserfs-utils udftools xfsprogs xfsdump inkscape &&

dnf update -y &&

dnf clean packages &&

dnf autoremove -y &&

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

flatpak install -y flathub org.standardnotes.standardnotes &&

flatpak install -y flathub no.mifi.losslesscut &&

flatpak install -y fedora org.stellarium.Stellarium &&

flatpak install -y flathub org.zaproxy.ZAP"



wget https://noto-website-2.storage.googleapis.com/pkgs/Noto-unhinted.zip
unzip Noto-unhinted.zip
mkdir -p ~/.fonts
cp -fr *ttf ~/.fonts/
gsettings set org.gnome.desktop.interface gtk-theme Yaru-light
gsettings set org.gnome.desktop.sound theme-name Yaru
gsettings set org.gnome.desktop.interface icon-theme Yaru
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.shell enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'appindicatorsupport@rgcjonas.gmail.com', 'gsconnect@andyholmes.github.io']"
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-overview'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'
gsettings set org.gnome.shell.extensions.dash-to-dock customize-alphas true
gsettings set org.gnome.shell.extensions.dash-to-dock max-alpha 0.8
gsettings set org.gnome.shell.extensions.dash-to-dock min-alpha 0.3
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
gsettings set org.gnome.shell.extensions.dash-to-dock icon-size-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false
/usr/bin/canberra-gtk-play --id="desktop-login" --description="GNOME Login"
