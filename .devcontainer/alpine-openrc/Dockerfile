FROM mcr.microsoft.com/devcontainers/base:alpine

RUN ./setup-script/setup-openrc.sh
RUN ./setup-script/setup-desktop-deps.sh
RUN ./setup-script/setup-desktop-service.sh

CMD ["/sbin/init"]
