#!/bin/bash

ffmpeg -f lavfi -i color=c=black:s=1080x1920 -i "$1" -c:v libx264 -c:a aac -movflags +faststart -shortest "$2"
