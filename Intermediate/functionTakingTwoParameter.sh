#!/bin/bash

area() 
{
    total_area=$(($1 * $2))
    echo "Area $total_area"
}

area 10 20
