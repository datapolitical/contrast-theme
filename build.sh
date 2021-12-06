#!/bin/bash
bundle config set disable_local_branch_check true
gem install contrast -s https://github.com/datapolitical/contrast
bundle config set local.contrast /opt/buildhome/repo
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle exec jekyll build
