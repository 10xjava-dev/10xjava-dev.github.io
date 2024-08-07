#!/bin/sh -l

MODE="${1:=publish}"

case $MODE in
  publish)
    echo "publishing"
  ;;
  serve)
    echo "serving"
  ;;
esac

# Do something with the input
echo "Hello, $1 // ${MODE}"
