FROM mono:6.12.0

# MAINTAINER Floyd Pink <imbleedingme@googlemail.com>

ENV INSTALLBUILDER_VERSION 21.9.0

# RUN printf "deb http://archive.debian.org/debian/ buster main\ndeb-src http://archive.debian.org/debian/ buster main\ndeb http://security.debian.org buster/updates main\ndeb-src http://security.debian.org buster/updates main" > /etc/apt/sources.list
# RUN printf "deb http://download.mono-project.com/repo/debian buster/snapshots/5.16.0.179 main" > /etc/apt/sources.list.d/mono-official-vs.list

RUN apt-get update && \
    apt-get install -y expect git gtk2.0 sudo wget curl && \
    wget -O installbuilder.run  https://installbuilder.com/installbuilder-enterprise-$INSTALLBUILDER_VERSION-linux-x64-installer.run && \
    chmod +x installbuilder.run

RUN ./installbuilder.run --mode unattended --unattendedmodeui none
