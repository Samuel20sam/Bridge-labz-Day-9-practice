#!/bin/sh -x

full_time=1
part_time=2
emp_rate_per_hour=50
check=$((RANDOM%3))

case $check in
		$full_time )
			emp_hour=8
		;;
		$part_time )
			emp_hour=4
		;;
		*)
			emp_hour=0
		;;
esac

salary=$(($emp_hour*$emp_rate_per_hour))
echo "Emp Salary is: "$salary

