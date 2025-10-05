FROM mcr.microsoft.com/devcontainers/base:alpine

# additional tools
RUN apk update && apk add --no-cache shadow tigervnc doas

# upgrade system to latest
RUN apk upgrade

CMD ["/sbin/init"]
