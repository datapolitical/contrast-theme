#!/bin/bash
MESSAGE=$(git log -1 --pretty=%B)
echo $MESSAGE
if [[ "$MESSAGE" == *"[build]"* ]] && [[ "$CF_PAGES_BRANCH" == "master" ]]; then exit 1;fi
source ~/.rvm/scripts/rvm
rvm default
git branch master
git checkout master
echo "/*" > _headers
echo "Content-Security-Policy-Report-Only: default-src 'none'; " >> _headers
# echo -n "style-src " >> _headers
# inline_hash=$(echo `cat assets/css/generated-critical.css` | openssl dgst -binary -sha256 | base64)
# echo -n "'$inline_hash'" >> _headers
# echo -n ";" >> _headers
cd ..
git clone https://github.com/datapolitical/chrisfnicholson
cd chrisfnicholson
bundle config set local.contrast-theme $HOME/repo
bundle install --verbose
bundle exec jekyll build --config _config.yml,_config_dev.yml
cp -r gh-pages $HOME/repo/gh-pages
cp $HOME/_headers $HOME/gh-pages/
