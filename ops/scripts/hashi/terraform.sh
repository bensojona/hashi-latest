#!/bin/sh

echo Fetching Terraform...
cd /tmp
wget --quiet --no-check-certificate https://dl.bintray.com/mitchellh/terraform/terraform_0.5.1_linux_amd64.zip -q -O terraform.zip

echo Installing Terraform...
unzip terraform.zip -d terraform
sudo cp -rf terraform/. /usr/bin/.
rm -rf terraform.zip
rm -rf terraform
