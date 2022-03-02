#!/bin/sh -x

part_time=1
full_time=2
max_rate_in_month=100
emp_rate_per_hour=20
working_days=20
total_emp_hours=0
total_woring_days=0

while [[ $total_emp_hours -lt $max_rate_in_month && $total_working_days -lt $working_days ]]
do

	((total_working_days++))
	check=$((RANDOM%3))
	case $check in
			$full_time )
				emp_hours=8
			;;
			$part_time )
				emp_hours=4
			;;
			*)
				emp_hours=0
			;;
	esac
echo "Total working day is: "$total_working_days

total_emp_hours=$(($total_emp_hours+$emp_hours))
echo "Total employee hours; "$total_emp_hours

total_salary=$(($total_emp_hours*$emp_rate_per_hour))
echo "Total salary: "$total_salary

done
