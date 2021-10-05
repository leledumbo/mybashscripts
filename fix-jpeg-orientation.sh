#!/bin/bash

for i in *.jpg; do convert -auto-orient "$i" "$i"; done
