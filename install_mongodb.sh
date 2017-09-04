#!/bin/sh

echo Part 2 - Installing MongoDB

echo 1. adding keys and repository:
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'

echo 2. updating system and installing mongodb
apt-get update
apt-get install -y mongodb-org

echo 3. launch MongoDB
systemctl start mongod

echo 4. setting autorun
systemctl enable mongod
