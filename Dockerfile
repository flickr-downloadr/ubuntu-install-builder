FROM mono:latest

# MAINTAINER Floyd Pink <imbleedingme@googlemail.com>

ENV INSTALLBUILDER_VERSION 18.10.0

RUN apt-get update && \
    apt-get install -y expect git gtk2.0 sudo wget curl && \
    wget -O installbuilder.run  https://installbuilder.bitrock.com/installbuilder-enterprise-$INSTALLBUILDER_VERSION-linux-x64-installer.run && \
    chmod +x installbuilder.run

RUN ./installbuilder.run --mode unattended --unattendedmodeui none
