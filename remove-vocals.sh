#!/bin/bash

demucs -n mdx_extra_q "$1"
TRACK_NAME=$(basename "$1" .mp3)
sox -m separated/mdx_extra_q/"$TRACK_NAME"/drums.wav \
        separated/mdx_extra_q/"$TRACK_NAME"/bass.wav \
        separated/mdx_extra_q/"$TRACK_NAME"/other.wav \
        "${TRACK_NAME}_minus_one.wav"
ffmpeg -i "${TRACK_NAME}_minus_one.wav" "${TRACK_NAME}_minus_one.mp3"
rm -r separated
rm "${TRACK_NAME}_minus_one.wav"
echo "Done! Your instrumental file is: ${TRACK_NAME}_minus_one.mp3"
