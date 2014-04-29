FROM centos:latest
MAINTAINER OpDemand <info@opdemand.com>
ADD . /app
WORKDIR /app
EXPOSE 5000
