#!/usr/bin/bash

echo "1 - ssh"
echo "2 - scp"
echo "Select an option to continue"
read option 

if [ "$option" -eq 1 ]; then
    echo "Please enter remote system ip address"
    read ip
    echo "Please enter the username"
    read username
    ssh $username@$ip 
elif [ "$option" -eq 2 ]; then
    echo "Please enter remote system ip address"
    read ip 
    echo "Please enter the username"
    read username
    echo "1 - local -> remote"
    echo "2 - remote -> local"
    echo "Please choose an option."
    read op
    if [ "$op" -eq 1 ]; then 
        echo "Please enter source file location"
        read path
        echo "Please enter destination file location."
        read dpath
        scp $path $username@$ip:$dpath
    elif [ "$op" -eq 2 ]; then
        echo "Please enter destination file location."
        read dpath
        echo "Please enter source file location"
        read path
        scp $username@$ip:$dpath $path
    else 
        echo "There is no such option."
    fi
else 
    echo "There is no option like that"
fi
