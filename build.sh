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
ls -l /opt/buildhome/repo
# bundle config local.contrast /opt/buildhome/repo
bundle install # --redownload
bundle exec jekyll build
