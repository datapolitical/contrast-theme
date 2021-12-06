#!/bin/bash
bundle config set disable_local_branch_check true
bundle config set gemfile /opt/buildhome/chrisfnicholson.github.io/Gemfile
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
gem install contrast -s https://github.com/datapolitical/contrast.git
bundle config set local.contrast /opt/buildhome/repo
bundle config set gemfile /opt/buildhome/chrisfnicholson.github.io/Gemfile
bundle exec jekyll build
