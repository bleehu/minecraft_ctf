FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y bash

RUN useradd -m admin -p admin
RUN useradd -m batman -p meetthewizard

COPY startup.sh /home/batman/startup.sh

RUN chmod +x /home/batman/startup.sh
RUN /home/batman/startup.sh

CMD ps -a
