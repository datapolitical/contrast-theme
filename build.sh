#!/bin/bash
MESSAGE=$(git log -1 --pretty=%B)
echo $MESSAGE
if [[ "$MESSAGE" == *"[build]"* ]] && [[ "$CF_PAGES_BRANCH" == "master" ]]; then exit 1;fi
source ~/.rvm/scripts/rvm
rvm default
git branch master
git checkout master
cat _headers > assets/css/test-headers.txt
echo -n "style-src " >> assets/css/test-headers.txt
inline_hash=`echo `cat assets/css/generated-critical.css` | openssl dgst -binary -sha256 | base64 `
echo -n "'$inline_hash'" >> assets/css/test-headers.txt
echo -n ";" >> assets/css/test-headers.txt
cd ..
git clone https://github.com/datapolitical/chrisfnicholson
cd chrisfnicholson
bundle config set local.contrast-theme $HOME/repo
bundle install --verbose
bundle exec jekyll build --config _config.yml,_config_dev.yml
cp -r gh-pages $HOME/repo/gh-pages
