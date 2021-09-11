FROM ubuntu:latest

MAINTAINER Jan Brinkmann

RUN apt-get update 
RUN apt-get install -y --no-install-recommends cron

COPY ./entry.sh /home/
COPY ./cron.sh /home/
RUN chmod 755 /home/entry.sh
RUN chmod 755 /home/cron.sh

WORKDIR /home
CMD [ "/home/entry.sh" ]
