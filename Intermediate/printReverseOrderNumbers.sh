#!/bin/bash

if [ $# -ne 1 ]
then 
    exit 1 
fi

a=$1
rev=0
b=0

while [ $a -gt 0 ]
do 
    b=`expr $a % 10`
    rev=`expr $rev \* 10 + $b`
    a=`expr $a / 10`
done

echo "Reverse number: $rev"


# Description: Using while loop 
# we will keep dividing the given number with 10 to remove one decimal place 
# from the number and in parallel we will keep appending the decimal in $rev
