#!/bin/bash

SIFS=$IFS
IFS=$(echo -en "\n\b")

for file in $( pacman -Qlq $1 )
do
  if [ "${file:$(( ${#file} - 1 ))}" == "/" ]
  then
    if [ ! -d ${file} ]
    then
      echo "Directory missing: ${file}"
    fi
  else
    if [ ! -f ${file} ]
    then
      echo "File missing: ${file}"
    fi
  fi
done

IFS=$SIFS

