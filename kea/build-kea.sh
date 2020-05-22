#!/bin/bash

# build script for ubuntu

set -e

cd /tmp
apt update
apt install -y openssl build-essential libboost-system1.62.0 libboost1.65-all-dev libboost1.65-dev automake libtool pkg-config postgresql-client curl python3
curl -O https://ftp.isc.org/isc/kea/cur/kea-1.6.2.tar.gz
tar xzf kea-1.6.2.tar.gz 
cd kea-1.6.2
./configure --prefix=/opt/kea --with-pgsql --with-openssl --enable-shell --with-site-packages=/usr/lib/python3/dist-packages
make