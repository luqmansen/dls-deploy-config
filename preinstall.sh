#!/bin/bash

sudo yum install epel-release
sudo yum upgrade python*
sudo yum install -y python3-pip
sudo pip3 install docker-compose 
docker-compose version