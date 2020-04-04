FROM mono:6.8.0.96

# MAINTAINER Floyd Pink <imbleedingme@googlemail.com>

ENV INSTALLBUILDER_VERSION 20.3.0

RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates

RUN printf "deb https://download.mono-project.com/repo/debian stable-stretch main" | tee /etc/apt/sources.list.d/mono-official-stable.list

RUN apt-get update && \
    apt-get install -y expect git gtk2.0 sudo wget curl

RUN  wget -O installbuilder.run  https://clients.bitrock.com/installbuilder/installbuilder-enterprise-$INSTALLBUILDER_VERSION-linux-x64-installer.run && \
    chmod +x installbuilder.run

RUN ./installbuilder.run --mode unattended --unattendedmodeui none
