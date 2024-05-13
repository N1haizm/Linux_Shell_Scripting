#!/bin/bash

max=0

if [ "$#" -gt 0 ]; then
    for num in $*
    do
        if [ "$num" -gt "$max" ]; then
            max=$num
        fi
    done
    echo "Largest value is $max"
else
    echo "Error: No arguments passed"
    exit 1
fi

