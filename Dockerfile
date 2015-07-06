FROM viljaste/base:latest

MAINTAINER Jürgen Viljaste <j.viljaste@gmail.com>

ENV TERM xterm

RUN apt-get update \
  && apt-get install -y conntrack \
  && apt-get clean \
  && rm -rf /tmp/* \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["conntrack"]
