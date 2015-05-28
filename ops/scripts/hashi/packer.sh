#!/bin/sh

echo Fetching Packer...
cd /tmp
wget --quiet --no-check-certificate https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip -q -O packer.zip

echo Installing Packer...
unzip packer.zip -d packer
sudo cp -rf packer/. /usr/bin/.
rm -rf packer.zip
rm -rf packer
