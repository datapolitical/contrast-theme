#!/bin/bash
gem sources
gem environment
bundle config set disable_local_branch_check true
gem build contrast-theme.gemspec
cd ..
gem environment
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
gem environment
bundle install --verbose --path /opt/buildhome/.rvm/gems/ruby-2.7.1
gem query --local
# gem install jekyll-include-cache --source http://rubygems.org
# gem install jekyll_picture_tag --source http://rubygems.org
# gem install jekyll-pwa-workbox --source http://rubygems.org
# gem install jekyll-sitemap --source http://rubygems.org
gem install --local $HOME/repo/*.gem
bundle exec jekyll build
