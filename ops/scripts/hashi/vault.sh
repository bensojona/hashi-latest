#!/bin/sh

echo Fetching Vault...
cd /tmp
wget --quiet --no-check-certificate https://dl.bintray.com/mitchellh/vault/vault_0.1.2_linux_amd64.zip -q -O vault.zip

echo Installing Vault...
unzip vault.zip -d vault
sudo cp -rf vault/. /usr/bin/.
rm -rf vault.zip
rm -rf vault
