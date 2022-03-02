#!/bin/bash -x

present=1
check=$((RANDOM%2))
if [ $present -eq $check ]
then
	emp_rate_per_hour=50
	emp_working_hour=8
	salary=$(($emp_rate_per_hour*$emp_working_hour))
else
	salary=0
fi
