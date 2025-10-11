#!/bin/ash

set -e

apk update
apk add --no-cache elogind openrc-user-pam

rc-update add elogind boot