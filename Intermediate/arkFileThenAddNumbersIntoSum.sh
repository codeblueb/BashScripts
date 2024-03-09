#!/bin/bash

awk '{x+=$0}END{print x}' devops.txt


# Description: awk can also read the file to loop 
# through the numbers and then it will return the sum
