#!/bin/bash
MESSAGE=$(git log -1 --pretty=%B)
echo $MESSAGE
if [[ "$MESSAGE" == *"[build]"* ]] && [[ "$CF_PAGES_BRANCH" == "master" ]]; then exit 1;fi
source ~/.rvm/scripts/rvm
rvm default
git branch master
git checkout master
cd ..
git clone https://github.com/datapolitical/chrisfnicholson
cd chrisfnicholson
bundle config set local.contrast-theme $HOME/repo
bundle install --verbose
bundle exec jekyll build --config _config.yml,_config_dev.yml
cp -r gh-pages $HOME/repo/gh-pages
