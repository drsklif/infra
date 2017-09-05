#!/bin/bash

echo Part 3 - deploy app

echo 1. copy app
git clone https://github.com/Artemmkin/reddit.git

echo 2. installing app
cd reddit && bundle install

echo 3. launch app server
puma -d
