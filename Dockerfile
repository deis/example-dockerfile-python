FROM centos:latest
MAINTAINER OpDemand <info@opdemand.com>
ADD . /app
WORKDIR /app
ENV PORT 5000
EXPOSE 5000
