#!/bin/bash
gem uninstall contrast
bundle config set disable_local_branch_check true
gem build contrast-theme.gemspec
gem install *.gem
cd ..
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle install
bundle exec jekyll build
