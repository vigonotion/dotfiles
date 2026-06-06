#!/bin/sh
dir="$PWD"
while [ "$dir" != "/" ] && [ -n "$dir" ]; do
  if [ -d "$dir/.obsidian" ]; then
    basename "$dir"
    exit 0
  fi
  dir="${dir%/*}"
done
exit 1
