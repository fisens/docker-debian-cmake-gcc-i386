ARG DEBIAN_VERSION=trixie
FROM debian:$DEBIAN_VERSION

RUN apt-get update \
  && apt-get install --assume-yes --no-install-recommends --quiet \
        libc6-dev-i386 \
        gcc-multilib \
        g++-multilib \
        build-essential \
        cmake \
        git \
        ca-certificates \
        file \
        nodejs \
  && apt-get clean all
