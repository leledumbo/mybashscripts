#!/bin/bash

scriptdir=`dirname $0`
singlepackagescriptpath="$scriptdir/check-package-integrity.sh"
for package in `pacman -Qq$1`
do
  echo $package
  $singlepackagescriptpath $package
done
