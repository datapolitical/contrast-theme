#!/bin/bash

cat $HOME
cat $HOME/.bundle/config
pwd
ls -l
cat .bundle/config
cd ..
pwd
ls -l
git clone https://github.com/datapolitical/chrisfnicholson.github.io
ls -l
cd chrisfnicholson.github.io
cat .bundle/config
ls -l /opt/buildhome/repo
bundle config local.contrast /opt/buildhome/repo
cat $HOME/.bundle/config
bundle install # --redownload
bundle exec jekyll build
