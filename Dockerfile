FROM debian:testing-slim
ENV LANG C.UTF-8

RUN apt-get update \
 && apt-get -y install --no-upgrade --no-install-recommends dnsmasq \
 && rm -rf /var/lib/apt/lists/*

CMD ["dnsmasq", "-k", "-7", "/etc/dnsmasq.d"]
