#!/bin/ash

set -e

mkdir -p /usr/local/share/applications
echo "[Desktop Entry]
NoDisplay=true
" | doas tee -a /usr/local/share/applications/lxqt-hibernate.desktop /usr/local/share/applications/lxqt-lockscreen.desktop /usr/local/share/applications/lxqt-reboot.desktop /usr/local/share/applications/lxqt-shutdown.desktop /usr/local/share/applications/lxqt-suspend.desktop