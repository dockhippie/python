FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk-install \
  build-base \
  python-dev \
  python \
  py-pip \
  py-setuptools

RUN mkdir /app
WORKDIR /app
CMD ["bash"]
