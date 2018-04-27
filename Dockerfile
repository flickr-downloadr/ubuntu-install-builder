FROM mono:latest

# MAINTAINER Floyd Pink <imbleedingme@googlemail.com>

ENV INSTALLBUILDER_VERSION 18.4.0

RUN apt-get update && apt-get install -y git gtk2.0 wget expect && \
    wget -O installbuilder.run  https://installbuilder.bitrock.com/installbuilder-enterprise-$INSTALLBUILDER_VERSION-linux-x64-installer.run && \
    chmod +x installbuilder.run

ADD install_script.sh .

RUN ./install_script.sh

WORKDIR /home/fd
