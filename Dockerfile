FROM centos:latest
MAINTAINER OpDemand <info@opdemand.com>
ADD . /app
WORKDIR /app
ENV PORT 8000
EXPOSE 8000
CMD python -m SimpleHTTPServer $PORT
