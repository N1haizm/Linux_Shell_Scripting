#!/usr/bin/bash

echo "Enter the numbers to addition"
read num1 num2

numm1=$(echo "scale=2; $num1" | bc)
numm2=$(echo "scale=2; $num2" | bc)

echo "Answer is $(echo "$numm1 + $numm2" | bc)"
