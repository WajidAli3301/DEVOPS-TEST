#!/bin/bash
######################################################
# SCRIPT     : Analyzing Apache Log file             #
# DESCRIPTION: Select option for desired request     #
# CREATED by : Wajid Ali     2022                    #
######################################################

clear
echo Please select a menu item
echo
echo "1) How many times the URL "/production/file_metadata/modules/ssh/sshd_config" was fetched"
echo "2) Of those requests, how many times the return code from Apache was not 200"
echo "3) The total number of times Apache returned any code other than 200"
echo "4) The total number of times that any IP address sent a PUT request to a path under "/dev/report/""
echo "5) A breakdown of how many times such requests were made by IP address"
echo
read CHOICE
echo "The Result is:- "
case $CHOICE in
	1) cat access.log | grep "/production/file_metadata/modules/ssh/sshd_config" | wc -l;;
	2) cat access.log | awk '($9 !~ /200/)' | awk '{print $9}' | wc -l;;
	3) cat access.log | awk '($9 !~ /200/)' | awk '{print $9}' | wc -l;;
	4) cat access.log | grep "/dev/report/" | wc -l;;
	5) cat access.log | awk '{print $1}' | wc -l;;
	*) echo You made an invalid selection;;
esac
