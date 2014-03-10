FROM ubuntu:12.04
MAINTAINER OpDemand <info@opdemand.com>
ENV PORT 8000
ADD . /app
WORKDIR /app
CMD python -m SimpleHTTPServer $PORT
