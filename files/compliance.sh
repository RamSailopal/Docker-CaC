#!/bin/bash
if [[ "$1" == "" ]]
then
	echo "Please the enter the hardening rating (0-100) that you want to measure against"
	exit
fi
awk -v rat="$1" '$2 =="Score:" && $3 > rat { exit 0 } $2 =="Score:" && $3 <= rat{ exit 1}' /usr/local/docker-bench-security/log/docker-bench-security.log 
exit $?
