#!/bin/sh -l

echo "Hello World  $1"

pwd

bundle install
bundle exec jekyll build

git config --global --add safe.directory /github/workspace

rm .gitignore

git status

