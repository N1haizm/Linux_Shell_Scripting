#!/usr/bin/bash

num=$1
new_num=""

for ((i=${#num}-1;i>=0;i--));
do
   new_num="${new_num}${num:$i:1}"
done

echo "$new_num"
