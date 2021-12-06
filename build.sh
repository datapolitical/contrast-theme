#!/bin/bash
bundle config set disable_local_branch_check true
gem build contrast.gemspec
gem install
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle config set local.contrast /opt/buildhome/repo
bundle config set gemfile /opt/buildhome/chrisfnicholson.github.io/Gemfile
bundle exec jekyll build
