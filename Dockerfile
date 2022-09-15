FROM ubuntu:latest
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install sudo nano wget tar zip unzip jq goxkcdpwgen ssh nginx runit build-essential git make gcc nvme-cli  -y
RUN apt-get upgrade -y
RUN apt-get install -y golang-1.18-go

