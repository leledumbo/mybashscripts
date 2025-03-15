#!/bin/bash

SaveIFS=$IFS
IFS=$(echo -en "\n\b")
for f in `find . -maxdepth 1 -not -type d | grep -v tidyup.sh`
do
  d=$(date -r "$f" +%Y-%m)
  if [ ! -e "$d" ]
  then
    echo "creating \"$d\" folder"
    mkdir -p "$d"
  fi
  echo "moving \"$f\" to \"$d\" ..."
  mv "$f" "$d/"
done
IFS=$SaveIFS
