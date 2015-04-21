FROM gliderlabs/alpine:3.1

RUN apk-install python
ADD . /app
WORKDIR /app
CMD python -m SimpleHTTPServer 5000
EXPOSE 5000
