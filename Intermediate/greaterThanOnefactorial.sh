#!/bin/bash

echo -n "Enter a number"
read n

factorial=1

while [ $n -gt 1 ]
do 
    factorial=$((factorial * n))
    n=$((n - 1))
done

echo $factorial
