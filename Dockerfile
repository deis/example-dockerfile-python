FROM centos:latest

ADD . /app
WORKDIR /app
CMD python -m SimpleHTTPServer 5000
EXPOSE 5000
