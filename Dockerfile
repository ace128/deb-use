FROM debian:latest
MAINTAINER adam.olenderski@gmail.com
RUN apt-get update && apt-get install -y man less vim curl wget sendemail sudo
RUN adduser --home /home/ace --shell /bin/bash ace && usermod -G sudo ace
USER ace
RUN echo set -o vi >> ~/.profile
RUN echo export PAGER=less >> ~/.profile
RUN echo export VISUAL=vi >> ~/.profile
RUN echo export EDITOR=vi >> ~/.profile 
WORKDIR /home/ace
