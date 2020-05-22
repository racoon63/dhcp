# Run this container image with:
# docker run -d --name isc-dhcp -p 67:67 --net=host racoon/dhcp

FROM alpine

RUN apk update --no-cache
RUN apk add dhcp --no-cache
RUN touch /var/lib/dhcp/dhcpd.leases

COPY dhcpd.conf /etc/dhcp/dhcpd.conf

EXPOSE 67/udp

ENTRYPOINT ["dhcpd", "-4", "-f", "-d"]