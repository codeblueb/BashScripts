machine#!/bin/bash

system_health() {
echo "###################IP Details#######################"
/usr/sbin/ifconfig
echo
echo "###################Uptime Details###################"
uptime
echo
echo "###################Last Login Details###############"
last
echo
echo "###################Disk Space Utilization Details###"
df -kh
echo
echo "###################Free Memory Details##############"
free -m
}

system_health &> /root/System_Details_`date +%d_%m_%y_%H_%M_%S`.txt
rm -f `ls -t /root/System_Details_*txt | awk 'NR>10'`


# Above Script must be triggered from Crontab every 1 Hour
#
# Keep a backup of last 10 Reports in the system at /root/ directory , 
# older reports must get deleted as we need to keep last 10 reports only
