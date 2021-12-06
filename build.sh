#!/bin/bash
source ~/.rvm/scripts/rvm
rvm 2.7.1 --default
git branch master
git checkout master
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle config set local.contrast-theme $HOME/repo
bundle install --verbose
bundle exec jekyll build --config _config.yml,_config_dev.yml
cp -r gh-pages $HOME/repo/gh-pages
