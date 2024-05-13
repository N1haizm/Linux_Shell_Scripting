#!/bin/bash

num1=$(echo "scale=2; $1" | bc)
operator=$2
num2=$(echo "scale=2; $3" | bc)

if [ "$operator" != "+" ] && [ "$operator" != "x" ] && [ "$operator" != "/" ] && [ "$operator" != "-" ]; then
    echo "Unsupported operator: $operator"
    exit 1
fi

if [ "$operator" = "/" ] && [ "$num2" = "0" ]; then
    echo "Error: Division by zero"
    exit 1
fi

case "$operator" in
    "+")
        result=$(echo "$num1 + $num2" | bc)
        ;;
    "x")
        result=$(echo "$num1 * $num2" | bc)
        ;;
    "/")
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    "-")
        result=$(echo "$num1 - $num2" | bc)
        ;;
esac

echo "$result"
