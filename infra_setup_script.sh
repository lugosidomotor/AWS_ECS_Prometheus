#!/bin/bash

#This script is going to create a Production's like envinronment

set -e

#Reason of the double update: https://github.com/hashicorp/terraform/issues/1025
sudo apt-get update -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose
sudo apt install -y python3-pip
sudo apt  install -y awscli
#sudo apt  install golang-go
#sudo apt  install gccgo-go
pip3 install boto3
pip3 install awscli

git clone https://github.com/lugosidomotor/AWS_ECS_Prometheus.git
cd AWS_ECS_Prometheus/
sudo docker-compose up

#git clone https://github.com/teralytics/prometheus-ecs-discovery.git
#cd prometheus-ecs-discovery/
#sudo docker build -t aws-ser .
#sudo docker run -v /home/ubuntu/AWS_ECS_Prometheus/prometheus_files:/file -e AWS_REGION='us-east-1' -e AWS_ACCESS_KEY_ID='' -e AWS_SECRET_ACCESS_KEY='' aws-ser -config.write-to /file 
