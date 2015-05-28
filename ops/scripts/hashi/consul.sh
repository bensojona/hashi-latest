#!/bin/sh

echo Fetching Consul...
cd /tmp
wget --quiet --no-check-certificate https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip -q -O consul.zip

echo Installing Consul...
unzip consul.zip -d consul
sudo cp -rf consul/. /usr/bin/.
rm -rf consul.zip
rm -rf consul
