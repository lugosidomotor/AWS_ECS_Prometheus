#!/bin/bash

#This script is going to create a Production's like envinronment

set -e

#Reason of the double update: https://github.com/hashicorp/terraform/issues/1025
sudo apt-get update -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose

git clone https://github.com/lugosidomotor/Prometheus-Grafana.git

cd /home/ubuntu/Prometheus-Grafana/infra
sudo docker-compose up -d
