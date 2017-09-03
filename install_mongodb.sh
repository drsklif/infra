#!/bin/sh

echo Part 2 - Installing MongoDB

echo 1. adding keys and repository:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'

echo 2. updating system and installing mongodb
sudo apt-get update
sudo apt-get install -y mongodb-org

echo 3. launch MongoDB
sudo systemctl start mongod

echo 4. setting autorun
sudo systemctl enable mongod
