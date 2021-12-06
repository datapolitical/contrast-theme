#!/bin/bash
gem sources
bundle config set disable_local_branch_check true
gem install jekyll-include-cache --source http://rubygems.org
gem build contrast-theme.gemspec
gem install --local *.gem
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle install
bundle exec jekyll build
