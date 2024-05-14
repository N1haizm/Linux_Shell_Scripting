#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File $1 not found"
    exit 1
fi

sed -i '' '/^[[:space:]]*$/d' "$1"
