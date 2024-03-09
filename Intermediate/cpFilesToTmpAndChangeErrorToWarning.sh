#!/bin/bash

cp /var/log/*.log /tmp/
ls /tmp/*.log | while read line; do
    sed -i 's/error/Warning/g' $line
done
