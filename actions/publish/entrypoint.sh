#!/bin/sh -l

echo "Hello World  $1"

bundle install
bundle exec jekyll build

ls _site



