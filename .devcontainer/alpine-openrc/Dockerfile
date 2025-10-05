FROM mcr.microsoft.com/devcontainers/base:alpine

RUN echo "wrkdir  is $PWD"
RUN ../setup-scripts/setup-openrc.sh
RUN ../setup-scripts/setup-desktop-deps.sh
RUN ../setup-scripts/setup-desktop-service.sh

CMD ["/sbin/init"]
