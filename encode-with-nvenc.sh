#!/bin/sh

ffmpeg -i "$1" -c:v h264_nvenc -profile:v high -preset slow -b:v 8M "$2"

