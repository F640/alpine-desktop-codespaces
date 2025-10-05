FROM mcr.microsoft.com/devcontainers/base:alpine

# additional tools
RUN apk update && apk install --upgrade --no-cache shadow tigervnc doas

CMD ["/sbin/init"]
