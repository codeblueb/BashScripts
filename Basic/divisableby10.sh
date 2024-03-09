#!/bin/bash

n=100

if [ $((n % 10)) -eq 0 ]
then 
    echo "divisable by 10"
else
    echo "not divisable by 10"
fi
