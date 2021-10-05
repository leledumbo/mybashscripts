#!/bin/bash

curdir=`pwd`

cd ~/.cache/yay
for p in $(pacman -Qmq)
do
  if [ -d "$p" ]
  then
    cd "$p"
    pf=`ls -t *.zst 2>&1 | head -1`
    if [ -e "$pf" ]
    then
      echo "Reinstalling package $p"
      sudo pacman -U --noconfirm "$pf"
    else
      echo "No zst file found for package $p"
    fi
    cd ..
  else
    echo "Package $p is installed but no yay cache found"
  fi
done

cd "$curdir"

