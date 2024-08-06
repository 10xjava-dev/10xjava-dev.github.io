#!/bin/sh -l

echo "Hello World  $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

git status 

