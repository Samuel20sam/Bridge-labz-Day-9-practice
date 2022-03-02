#!/bin/sh -x

part_time=1
full_time=2
max_rate_in_month=100
emp_rate_per_hour=20
working_days=20

total_emp_hour=0
total_working_days=0

function get_working_hours()
{
	echo "Value is: "$1
	case $1 in
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
}

while [[ $total_emp_hour -lt $max_rate_in_month && $total_working_days -lt $working_days ]]

do
	((total_working_days++))
	echo "Total working days: "$total_working_days

get_working_hours $((RANDOM%3))

total_emp_hour=$(($total_emp_hour+$emp_hours))
echo "Total Emp Hours is: "$total_emp_hour

total_salary=$(($total_emp_hour*$emp_rate_per_hour))
echo "Total Salary is: "$total_salary

done
