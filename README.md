# dhcp

Repository to provide a DHCP server.

## Usage

To run the dhcp server in a docker container and on your host network, run:

```bash
docker run -d --name dhcp -p 67/udp --net=host racoon/dhcp
```
