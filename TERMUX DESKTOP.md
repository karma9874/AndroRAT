---
created: 2021-05-21T10:13:17-04:00
modified: 2021-05-21T10:30:22-04:00
---

# TERMUX DESKTOP

apt update && apt upgrade -y



pkg install x11-repo && pkg install tigervnc openbox obconf xorg-xsetroot xcompmgr xterm polybar st libnl zsh geany pcmanfm rofi feh neofetch htop vim elinks mutt git wget curl xfce4-settings -y


cd $HOME && git clone https://github.com/adi1090x/termux-desktop && cd termux-desktop && cp -rf ./home /data/data/com.termux/files && cp -rf ./usr /data/data/com.termux/files

vncserver


export DISPLAY=":1"

If vnc not running
vncserver -list

Localhost:1
