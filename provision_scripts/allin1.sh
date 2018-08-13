#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install unzip python-minimal

cd /tmp
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

sudo apt-get -y update
sudo apt-get -y install awscli ruby
wget -O /tmp/install-codedeploy-agent https://aws-codedeploy-eu-west-1.s3.amazonaws.com/latest/install
chmod +x /tmp/install-codedeploy-agent
sudo /tmp/install-codedeploy-agent auto
rm /tmp/install-codedeploy-agent

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs