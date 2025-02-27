#!/usr/bin/env bash

./bin/bundle exec jekyll clean
./bin/bundle exec jekyll build
./bin/bundle exec jekyll serve --baseurl=""
