#!/bin/sh

echo Part 1 - Installing Ruby

echo 1. importing key
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

echo 2. installing rvm
curl -sSL https://get.rvm.io | bash -s stable

echo 3. loading RVM script and installing dependencies
source /usr/local/rvm/scripts/rvm
rvm requirements

echo 4. Installing Ruby version 2.4.1
rvm install 2.4.1

echo 5. set default ruby version
rvm use 2.4.1 --default

echo 6. installing bundler
gem install bundler -V --no-ri --no-rdoc
