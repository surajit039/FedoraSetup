#! /bin/bash

sudo dnf remove -y adwaita-qt5 totem epiphany evolution lohit-assamese-fonts lohit-bengali-fonts lohit-devanagari-fonts lohit-gujarati-fonts lohit-gurmukhi-fonts lohit-kannada-fonts lohit-malayalam-fonts lohit-marathi-fonts lohit-nepali-fonts lohit-odia-fonts lohit-tamil-classical-fonts lohit-tamil-fonts lohit-telugu-fonts

sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager --set-enabled rpmfusion-free
sudo dnf config-manager --set-enabled rpmfusion-free-updates
sudo dnf config-manager --set-enabled rpmfusion-nonfree
sudo dnf config-manager --set-enabled rpmfusion-nonfree-updates

sudo dnf install -y vlc kdenlive gnome-shell-extension-dash-to-dock gnome-shell-extension-appindicator WoeUSB gnome-multi-writer xkill geary rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data simplescreenrecorder transmission gnome-sound-recorder firefox mozilla-ublock-origin chromium-freeworld yaru-theme gnome-extensions-app gimp x264 x265 youtube-dl gparted python python2 python3 make cmake automake autoconf gcc g++ adb java-latest-openjdk-devel procyon-decompiler meld ghex gnupg brasero audacity ibus-m17n hunspell-as hunspell-bn hunspell-en hunspell-gu hunspell-hi hunspell-kn hunspell-ml hunspell-mr hunspell-ne hunspell-or hunspell-pa hunspell-ta hunspell-te hyphen-sa seahorse wget git evince-nautilus brasero-nautilus easytag-nautilus gtkhash-nautilus seahorse-nautilus gvfs-mtp wireshark perl openssl openjfx-devel nodejs npm nautilus-extensions golang  tesseract tesseract-langpack-asm tesseract-langpack-chi_sim  tesseract-langpack-chi_tra  tesseract-langpack-eng tesseract-langpack-guj  tesseract-langpack-hin tesseract-langpack-kan tesseract-langpack-mal tesseract-langpack-mar tesseract-langpack-mya tesseract-langpack-nep tesseract-langpack-ori tesseract-langpack-pan tesseract-langpack-san tesseract-langpack-tam btrfs-progs e2fsprogs f2fs-tools dosfstools mtools hfsutils jfsutils util-linux cryptsetup lvm2 nilfs-utils reiserfs-utils udftools xfsprogs xfsdump inkscape

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak install -y flathub org.standardnotes.standardnotes

sudo dnf update -y

sudo dnf clean packages
sudo dnf autoremove -y
sudo systemctl disable systemd-journal-flush.service
