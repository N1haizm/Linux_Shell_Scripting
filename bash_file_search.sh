#!/bin/bash

echo -n "Please enter path: "
read path 

if ! [ -e "$path" ]; then
    echo "The directory path provided as input does not exist"
    exit 1
fi

found_files=$(find "$path" -type f -name "*.txt" -exec grep -l "bash" {} +)

if [ -z "$found_files" ]; then
    echo "No .txt files found in $path"
    exit 0
fi

echo "$found_files"
