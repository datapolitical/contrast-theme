#!/bin/bash
gem sources
bundle config set disable_local_branch_check true
gem build contrast-theme.gemspec
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle install --redownload
gem query --local
gem -i jekyll-include-cache
gem install jekyll-include-cache --source http://rubygems.org
gem install jekyll_picture_tag --source http://rubygems.org
gem install --local $HOME/repo/*.gem
bundle exec jekyll build
