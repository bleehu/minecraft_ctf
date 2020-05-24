FROM ubuntu:18.04

MAINTAINER michael.serious.hedges@gmail.com


RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y bash net-tools
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ssh
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y nano
RUN apt-get install -y sudo
RUN apt-get update && apt-get upgrade -y

RUN useradd -m system
RUN usermod -aG sudo system

COPY startup.sh /home/system/server/startup.sh

COPY server/ /home/system/server/
RUN chown -R system /home/system/server/

COPY sshd_config /etc/ssh/sshd_config

#ssh
EXPOSE 22

#minecraft
EXPOSE 25565

#minecraft server commands
EXPOSE 25566

#ENTRYPOINT service ssh start && bash
ENTRYPOINT  /home/system/server/startup.sh && bash