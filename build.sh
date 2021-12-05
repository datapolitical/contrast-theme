#!/bin/bash

pwd
ls -l
git clone https://github.com/datapolitical/chrisfnicholson.github.io
cd chrisfnicholson.github.io
bundle config local.contrast ../repo
bundle install
bundle exec jekyll build
