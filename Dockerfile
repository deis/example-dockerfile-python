FROM centos:latest
MAINTAINER OpDemand <info@opdemand.com>

ADD . /app
WORKDIR /app

RUN mv start /bin
EXPOSE 5000
