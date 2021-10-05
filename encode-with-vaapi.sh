#!/bin/sh

ffmpeg -init_hw_device vaapi=foo:/dev/dri/renderD128 -hwaccel vaapi -hwaccel_output_format vaapi -hwaccel_device foo -i "$1" -filter_hw_device foo -vf 'format=nv12|vaapi,hwupload' -c:v h264_vaapi "$2"

