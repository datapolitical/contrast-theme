#!/bin/bash

cat $HOME
pwd
ls -l
cd ..
pwd
ls -l
git clone https://github.com/datapolitical/chrisfnicholson.github.io
ls -l
cd chrisfnicholson.github.io
ls -l ../repo
bundle config local.contrast /opt/buildhome/repo
bundle install
bundle exec jekyll build
