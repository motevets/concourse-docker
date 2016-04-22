FROM debian:jessie
RUN apt-get update && \
    apt-get install -y iptables ca-certificates aufs-tools wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /etc/concourse
ADD ./keys /etc/concourse/keys
ADD ./bin/* /usr/local/bin/
