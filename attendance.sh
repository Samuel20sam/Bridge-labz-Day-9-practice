#!/bin/bash -x

present=1
check=$((RANDOM%2))

if [ $present -eq $check ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi
