#! /bin/bash


pkexec bash -c "

dnf remove -y adwaita-qt6 adwaita-qt5 totem gnome-calendar epiphany evolution lohit-assamese-fonts lohit-bengali-fonts lohit-devanagari-fonts lohit-gujarati-fonts lohit-gurmukhi-fonts lohit-kannada-fonts lohit-malayalam-fonts lohit-marathi-fonts lohit-nepali-fonts lohit-odia-fonts lohit-tamil-classical-fonts lohit-tamil-fonts lohit-telugu-fonts google-noto-cjk-fonts-common google-noto-emoji-color-fonts google-noto-sans-cjk-ttc-fonts google-noto-sans-gurmukhi-fonts google-noto-sans-sinhala-vf-fonts bitstream-vera* paktype* java-11-openjdk java-11-openjdk-devel gnome-shell-extension-window-list gnome-shell-extension-places-menu gnome-shell-extension-background-logo gnome-contacts gnome-weather gnome-maps gnome-photos mediawriter libreoffice-calc libreoffice-writer libreoffice-impress rhythmbox gnome-tour firefox &&

dnf install -y qbittorent gnome-tweaks file-roller gnome-shell-extension-appindicator gnome-shell-extension-gsconnect fondo gnome-sound-recorder gparted python make cmake automake autoconf gcc g++ adb java-latest-openjdk-devel procyon-decompiler meld ghex gnupg brasero seahorse wget git evince-nautilus brasero-nautilus gtkhash-nautilus nautilus-image-converter seahorse-nautilus gvfs-mtp wireshark openssl nodejs npm nautilus-extensions btrfs-progs exfatprogs e2fsprogs f2fs-tools dosfstools mtools hfsutils jfsutils util-linux cryptsetup lvm2 nilfs-utils udftools xfsprogs xfsdump &&

dnf clean packages &&

dnf autoremove -y &&

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

flatpak remote-modify --enable flathub &&

flatpak mask org.kde.KStyle.Adwaita &&

flatpak install flathub com.mattjakeman.ExtensionManager com.google.Chrome org.videolan.VLC com.visualstudio.code &&

alternatives --set java java-latest-openjdk.x86_64"

cd ~/.cache
mkdir wget
cd wget
wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansDevanagari-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifDevanagari-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansBengali-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifBengali-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansGujarati-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifGujarati-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansKannada-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifKannada-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansMalayalam-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifMalayalam-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOriya-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTamil-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifTamil-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTelugu-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifTelugu-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansGurmukhi-hinted.zip
unzip -o \*.zip
mkdir -p ~/.fonts
rsync -P --exclude=*UI-Regular* *Regular* ~/.fonts
cd ~/
rm -fr ~/.cache
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.shell enabled-extensions "['appindicatorsupport@rgcjonas.gmail.com', 'gsconnect@andyholmes.github.io']"
