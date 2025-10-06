#!/bin/ash

set -e

apk update
apk add --no-cache polkit polkit-elogind openrc-user-pam elogind lxqt-policykit eudev

rc-update add polkit
rc-update add elogind