#! /bin/bash


pkexec bash -c "

dnf remove -y totem gnome-calendar epiphany evolution java-17-openjdk java-17-openjdk-devel gnome-shell-extension-window-list gnome-shell-extension-places-menu gnome-shell-extension-background-logo gnome-contacts gnome-weather gnome-maps gnome-photos mediawriter libreoffice-calc libreoffice-writer libreoffice-impress rhythmbox gnome-tour firefox &&

dnf install -y gnome-tweaks timeshift file-roller fragments p7zip-plugins p7zip gnome-shell-extension-appindicator gnome-shell-extension-system-monitor gnome-shell-extension-caffeine la-capitaine-cursor-theme fondo gnome-sound-recorder gparted python make cmake automake autoconf gcc g++ adb java-latest-openjdk meld gnupg seahorse wget git seahorse-nautilus gvfs-mtp openssl nodejs npm nautilus-extensions btrfs-progs exfatprogs e2fsprogs f2fs-tools dosfstools mtools hfsutils jfsutils util-linux cryptsetup lvm2 nilfs-utils udftools xfsprogs xfsdump &&

dnf clean packages &&

dnf autoremove -y &&

dnf copr enable kylegospo/grub-btrfs &&

dnf install grub-btrfs-timeshift &&

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&

flatpak remote-modify --enable flathub &&

flatpak install flathub -y org.mozilla.firefox org.videolan.VLC org.onlyoffice.desktopeditors &&

alternatives --set java java-latest-openjdk.x86_64 &&

dnf install -y https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm &&

mkdir -p /usr/local/share/fonts && cd /usr/local/share/fonts &&

git clone https://github.com/yell0wsuit/New-York-fonts.git &&

git clone https://github.com/aliifam/BlinkMacSystemFont.git &&

mkdir -p /usr/local/share/fonts/Helvetica && cd /usr/local/share/fonts/Helvetica &&

wget https://laplace.physics.ubc.ca/Doc/rnpletal/Helvetica.ttf.gz && gunzip Helvetica.ttf.gz &&

mkdir -p /usr/local/share/fonts/ComicMono && cd /usr/local/share/fonts/ComicMono &&

wget https://dtinth.github.io/comic-mono-font/ComicMono.ttf &&

echo '[org/gnome/shell]
enabled-extensions=[\"appindicatorsupport@rgcjonas.gmail.com\", \"caffeine@patapon.info\", \"system-monitor@gnome-shell-extensions.gcampax.github.com\"]' > /etc/dconf/db/local.d/00-extensions &&
chmod 755 /etc/dconf/db/local.d/00-extensions &&
echo '[org/gnome/desktop/interface]
cursor-theme=\"capitaine-cursors-light\"' > /etc/dconf/db/gdm.d/10-cursor-settings &&
chmod 755 /etc/dconf/db/gdm.d/10-cursor-settings &&
dconf update"
#############################
# Use the following commands only for user level settings only when the above root level commands already been executed once to the system.
# But in case of first time usage do not touch any command, execute the whole.
#############################
fc-cache -v -f
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.desktop.interface document-font-name 'BlinkMacSystemFont 16'
gsettings set org.gnome.desktop.interface font-name 'BlinkMacSystemFont Medium 14'
gsettings set org.gnome.desktop.interface monospace-font-name 'Comic Mono 17'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'BlinkMacSystemFont Semibold 15'
