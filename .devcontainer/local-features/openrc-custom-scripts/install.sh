#!/bin/ash

set -e

chmod +x ./genx11unix.start

cp ./genx11unix.start /etc/local.d/genx11unix.start

rc-update add local default