#!/bin/bash
sudo yum update -y
sudo yum install -y
sudo yum install docker -y
git clone https://github.com/SilverEngineered/deployment_template
cd deployment_template
sudo docker build -t dockerflask .
sudo service docker start
sudo docker run -d -p 5000:5000 dockerflask
