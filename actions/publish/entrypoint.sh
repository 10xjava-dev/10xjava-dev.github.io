#!/bin/sh -l

echo "Hello World  $1"

bundle install
bundle exec jekyll build

git config --global --add safe.directory /github/workspace

git status

