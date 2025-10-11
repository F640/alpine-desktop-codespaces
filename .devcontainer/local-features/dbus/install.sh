#!/bin/ash

set -e

apk update
apk add --no-cache dbus

rc-update add dbus