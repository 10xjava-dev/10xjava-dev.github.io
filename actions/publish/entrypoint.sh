#!/bin/sh -l

echo "Hello World"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

