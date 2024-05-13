#!/usr/bin/bash

num=1

echo -n "enter the number of rows: "
read rows

for ((i=1;i<=$rows;i++))
do
   for((j=1;j<=i;j++))
   do
      echo -n "$num "
      ((num++))
   done
   echo ""
done
