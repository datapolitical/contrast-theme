#!/bin/bash
source ~/.rvm/scripts/rvm
rvm 2.7.1 --default
echo $GEM_PATH
gem sources
gem environment
bundle config set disable_local_branch_check true
gem build contrast-theme.gemspec
cd ..
gem environment
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
gem environment
bundle install --verbose
gem uninstall contrast-theme
gem cleanup contrast-theme
gem query --local
# gem install jekyll-include-cache --source http://rubygems.org
# gem install jekyll_picture_tag --source http://rubygems.org
# gem install jekyll-pwa-workbox --source http://rubygems.org
# gem install jekyll-sitemap --source http://rubygems.org
gem install $HOME/repo/contrast*.gem 
echo $GEM_PATH
bundle exec jekyll build
cp -r gh-pages $HOME/repo/gh-pages
