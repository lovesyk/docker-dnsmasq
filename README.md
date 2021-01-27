# docker-dnsmasq
## Description
This is a simple docker image for dnsmasq based on Debian testing. It has no hard-coded version numbers and will always be up-to-date.

## Example docker-compose.yml
```
version: "2.4"

services:
  dnsmasq:
    build: ../../images/dnsmasq
    container_name: dnsmasq
    network_mode: host
    privileged: true
    volumes:
      - ./dnsmasq.conf:/etc/dnsmasq.d/dnsmasq.conf
```
