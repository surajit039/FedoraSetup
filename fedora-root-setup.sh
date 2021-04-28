#! /bin/bash

sudo dnf remove -y totem epiphany lohit-assamese-fonts lohit-bengali-fonts lohit-devanagari-fonts lohit-gujarati-fonts lohit-gurmukhi-fonts lohit-kannada-fonts lohit-malayalam-fonts lohit-marathi-fonts lohit-nepali-fonts lohit-odia-fonts lohit-tamil-classical-fonts lohit-tamil-fonts lohit-telugu-fonts

sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install -y vlc gnome-sound-recorder transmission gnome-sound-recorder firefox mozilla-ublock-origin chromium yaru-theme gnome-tweaks gnome-extensions-app gimp pitivi gstreamer1* youtube-dl clipgrab gparted python python2 python3 make cmake automake autoconf gcc g++ adb java-latest-openjdk-devel procyon-decompiler meld ghex gnupg brasero audacity ibus-m17n hunspell-as hunspell-bn hunspell-en hunspell-gu hunspell-hi hunspell-kn hunspell-ml hunspell-mr hunspell-ne hunspell-or hunspell-pa hunspell-ta hunspell-te hyphen-sa gnome-multi-writer seahorse wget git evince-nautilus brasero-nautilus easytag-nautilus gtkhash-nautilus seahorse-nautilus evolution gvfs-mtp wireshark perl openssl openjfx-devel nodejs npm nautilus-extensions golang  tesseract tesseract-langpack-asm tesseract-langpack-chi_sim  tesseract-langpack-chi_tra  tesseract-langpack-eng tesseract-langpack-guj  tesseract-langpack-hin tesseract-langpack-kan tesseract-langpack-mal tesseract-langpack-mar tesseract-langpack-mya tesseract-langpack-nep tesseract-langpack-ori tesseract-langpack-pan tesseract-langpack-san tesseract-langpack-tam btrfs-progs e2fsprogs f2fs-tools dosfstools mtools hfsutils jfsutils util-linux cryptsetup lvm2 nilfs-utils reiserfs-utils udftools xfsprogs xfsdump qt5ct inkscape timeshift

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak install -y flathub org.standardnotes.standardnotes
sudo flatpak install -y flathub io.github.seadve.Kooha

sudo dnf update -y

sudo dnf clean packages
sudo dnf autoremove -y

sudo touch /etc/X11/Xsession.d/100-qt5ct
sudo echo "export QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/X11/Xsession.d/100-qt5ct
sudo echo "export QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment
sudo mkdir -p /etc/xdg/qt5ct
sudo cp qt5ct.conf /etc/xdg/qt5ct/qt5ct.conf
