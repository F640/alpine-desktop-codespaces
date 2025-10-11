#!/bin/ash

set -e

apk update
apk add --no-cache polkit polkit-elogind lxqt-policykit

rc-update add polkit