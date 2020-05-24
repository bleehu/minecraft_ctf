FROM ubuntu:18.04

MAINTAINER michael.serious.hedges@gmail.com


RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y bash net-tools
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ssh
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y nano

RUN useradd -m system -p "admin"
RUN usermod -aG sudo system

COPY startup.sh /home/batman/startup.sh

COPY server.jar /home/system/server/server.jar
COPY sshd_config /etc/ssh/sshd_config

RUN chmod +x /home/batman/startup.sh
RUN /home/batman/startup.sh

#ssh
EXPOSE 22

#minecraft
EXPOSE 25565

#minecraft server commands
EXPOSE 25566

ENTRYPOINT service ssh start && bash
#ENTRYPOINT java -Xmx1024M -Xms1024M -jar minecraft_server.1.15.2.jar nogui 