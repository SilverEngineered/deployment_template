#!/bin/bash
sudo apt update
sudo apt install docker.io
sudo docker build -t dockerflask .
sudo service docker start
sudo docker run -d -p 5000:5000 dockerflask
