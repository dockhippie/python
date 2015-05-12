FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk add --update \
  build-base \
  python-dev \
  python \
  py-pip \
  py-setuptools && \
  rm -rf /var/cache/apk/*

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
