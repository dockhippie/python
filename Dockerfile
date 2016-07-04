FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/srv/app"]

WORKDIR /srv/app
CMD ["bash"]

RUN apk update && \
  apk add \
    build-base \
    python-dev \
    python \
    py-pip \
    py-setuptools && \
  rm -rf /var/cache/apk/*

ADD rootfs /
