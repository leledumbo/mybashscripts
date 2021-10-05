#!/bin/bash

ffmpeg -i "$1" -i "$2" -filter_complex \
"[0:v][1:v]vstack=inputs=2[v]; \
 [0:a][1:a]amerge[a]" \
-map "[v]" -map "[a]" -ac 2 "$3"

