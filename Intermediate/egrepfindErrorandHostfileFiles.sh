#!/bin/bash

egrep "Error|host" /var/log/*.log 

# Description: We can use egrep command to get those files 
# which are having "error" keyword or "host" keyword in *.log files.
