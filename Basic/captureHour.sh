#!/bin/bash

CURRET_HOUR=`date +'%H'`

if [ $((CURRET_HOUR % 2)) -eq 0 ]
then 
    echo "The hour is an even number"
fi
