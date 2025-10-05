#!/bin/ash

# install essential desktop packages
apk update && apk upgrade
# lxqt packages
apk add --no-cache --upgrade lxqt-desktop pavucontrol-qt font-dejavu gvfs pcmanfm-qt udisks2 elogind lxqt-policykit dbus polkit polkit-elogind openrc-user-pam eudev \
    # pipewire audo service \
    pipewire wireplumber pipewire-pulse pipewire-jack pipewire-alsa \
    # vnc server \
    tigervnc \
    # doas or sudo
    doas
