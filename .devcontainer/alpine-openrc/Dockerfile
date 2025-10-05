FROM mcr.microsoft.com/devcontainers/base:alpine

# additional tools
RUN apk update && apk add --no-cache shadow tigervnc doas busybox-suid alpine-conf && \
    # add user to wheel group and try fix doas command \
    addgroup vscode wheel && echo "permit nopass :wheel as root" > /etc/doas.d/doas.conf && \
    # upgrade system to latest \
    apk upgrade

ENTRYPOINT ["/sbin/init"]
