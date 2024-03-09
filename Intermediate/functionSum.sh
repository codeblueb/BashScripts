#!/bin/bash

function sum()
{
    echo "Enter first number"
    read num

    echo "Enter second number"
    read num1

    echo "Total sum: $((num + num1))"
}

sum
