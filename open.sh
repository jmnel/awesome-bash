#!/usr/bin/env bash

fullfile=${1}

filename=$(basename "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"

if [ "$extension" == "pdf" ]; then
    # Launch evince
    (evince ${@} &> /dev/null &)
fi
