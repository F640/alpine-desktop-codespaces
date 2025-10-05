#!/bin/ash

apk update
apk add --no-cache openrc busybox-openrc
sed -i '/getty/d' /etc/inittab