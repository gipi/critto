FROM ubuntu:14.04

MAINTAINER Gianluca Pacchiella
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y texlive-base \
    texlive-formats-extra texlive-pictures make texlive-plain-extra texlive-fonts-recommended

WORKDIR /source

ENTRYPOINT ["make"]
