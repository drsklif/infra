#!/bin/sh

echo Part 3 - deploy app

echo 1. copy app
git clone https://github.com/Artemmkin/reddit.git

echo 2. installing app
export PATH="/usr/local/rvm/gems/ruby-2.4.1/bin:/usr/local/rvm/gems/ruby-2.4.1@global/bin:/usr/local/rvm/rubies/ruby-2.4.1/bin:$PATH"
export GEM_HOME='/usr/local/rvm/gems/ruby-2.4.1'
export GEM_PATH='/usr/local/rvm/gems/ruby-2.4.1:/usr/local/rvm/gems/ruby-2.4.1@global'
export MY_RUBY_HOME='/usr/local/rvm/rubies/ruby-2.4.1'
export IRBRC='/usr/local/rvm/rubies/ruby-2.4.1/.irbrc'
unset MAGLEV_HOME
unset RBXOPT
export RUBY_VERSION='ruby-2.4.1'
echo $PATH
cd reddit && bundle install

echo 3. launch app server
puma -d
