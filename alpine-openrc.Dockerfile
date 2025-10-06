FROM mcr.microsoft.com/devcontainers/base:alpine

# openrc and additional tools
RUN apk update && apk add --no-cache openrc busybox-openrc shadow tigervnc doas busybox-suid alpine-conf && \
    # add user to wheel group and try fix doas command \
    addgroup vscode wheel && echo "permit nopass :wheel as root" > /etc/doas.d/doas.conf && \
    # upgrade system to latest \
    apk upgrade

COPY ./autostart/lxqt-powermanagement.desktop  /etc/xdg/autostart/lxqt-powermanagement.desktop
COPY ./pipewire/dummy-sink.conf /etc/pipewire/pipewire.conf.d/dummy-sink.conf

USER vscode

# terrible, but can handle everchanging uid
RUN doas mkdir -p /var/run/user/$(id -u) && \
    doas chmod -R 0700 /var/run/user/$(id -u) && \
    doas chown $USER:$USER /var/run/user/$(id -u)

COPY ./tigervnc/config /home/vscode/.config/tigervnc/config

# breaks elogind
# VOLUME ["/sys/fs/cgroup"]

ENTRYPOINT ["/sbin/init"]