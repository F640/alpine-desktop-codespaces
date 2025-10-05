FROM mcr.microsoft.com/devcontainers/base:alpine

# additional tools
RUN apk update && apk add --no-cache shadow tigervnc doas

# add user to whell group and try fix doas command
RUN adduser -G wheel -D vscode && echo "permit nopass :wheel as root" > /etc/doas.d/doas.conf

# upgrade system to latest
RUN apk upgrade

CMD ["/sbin/init"]
