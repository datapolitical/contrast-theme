#!/bin/bash
bundle clean
bundle config set disable_local_branch_check true
gem build contrast.gemspec
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle clean
bundle config set local.contrast /opt/buildhome/repo
bundle config set gemfile /opt/buildhome/chrisfnicholson.github.io/Gemfile
gem install /opt/buildhome/repo/contrast.gemspec
bundle install
bundle exec jekyll build
