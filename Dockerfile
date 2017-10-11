FROM ubuntu:xenial
MAINTAINER Mariusz Pasek <pasiasty@gmail.com>

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y libgtest-dev
RUN apt-get install -y cmake
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt-get install -y nano

RUN git clone https://github.com/pasiasty/docker_scripts.git ~/docker_scripts
RUN ~/docker_scripts/build/initialize.sh

RUN mkdir /workdir

ENTRYPOINT ["sleep", "infinity"]
