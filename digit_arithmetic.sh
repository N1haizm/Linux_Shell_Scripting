#!/bin/bash

echo -n "Enter the string: "
read string
length=${#string}

is_number() {
    pattern='^[0-9]+$'
    if [[ $1 =~ $pattern ]]; then
        return 0  
    else
        return 1
    fi
}

for ((i=0;i<length-1;i++));
do
    if ! is_number "${string:$i:1}"; then
        echo "Error: Please ensure that only numeric characters are entered before specifying the operator."
        exit 1
    fi
done

if is_number "${string:length-1:1}"; then
    echo "Error: operator missing"
    exit 1
fi

if [ "${string:length-1:1}" != "+" ] && [ "${string:length-1:1}" != "*" ] && [ "${string:length-1:1}" != "-" ] && [ "${string:length-1:1}" != "/" ]; then
    echo "Error: There is no operation like that"
    exit 1
fi

case "${string:length-1:1}" in
    "+")
        sum=0
        for (( i=0; i<=length-2;i++ ));
        do
            sum=$((sum + ${string:$i:1}))
        done
        echo "Sum is $sum"
        ;;
    "-")
        fnum=${string:0:1}
        for (( i=1; i<=length-2;i++ ));
        do
            fnum=$((fnum - ${string:$i:1}))
        done
        echo "Sub is $fnum"
        ;;
    "*")
        mnum=1
        for (( i=0; i<length-1;i++ ));
        do
            mnum=$((mnum * ${string:$i:1}))
        done
        echo "Mul is $mnum"
        ;;
esac

