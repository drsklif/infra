#!/bin/sh

echo Part 3 - deploy app

echo 1. copy app
git clone https://github.com/Artemmkin/reddit.git

echo 2. installing app
export PATH=$PATH:/usr/local/rvm/gems/ruby-2.4.1/bin
cd reddit && bundle install

echo 3. launch app server
puma -d
