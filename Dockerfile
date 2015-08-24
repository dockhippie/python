FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  apk add \
    build-base \
    python-dev \
    python \
    py-pip \
    py-setuptools && \
  rm -rf /var/cache/apk/*

ADD rootfs /

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
