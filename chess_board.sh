#!/bin/bash

WHITE='\033[0;37m'
BLACK='\033[0;30m'
NC='\033[0m' 

read -p "Enter the width: " width

for ((i=1; i<=width; i++)); do
    for ((j=1; j<=width; j++)); do
        if [ $(( (i + j) % 2 )) -eq 0 ]; then
            echo -e -n "${BLACK}█${NC}"
        else
            echo -e -n "${WHITE}█${NC}"
        fi
    done
    echo # Start a new line after each row
done
