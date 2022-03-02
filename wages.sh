#!/bin/sh +x

part_time=1
full_time=2
initial_salary=0
emp_rate_per_hour=20
working_days=20

for((day=1; day<=$working_days; day++))
do
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

echo "Month's working day: "$day

salary=$(($emp_hours*$emp_rate_per_hour))
echo "Today's salary amount: "$salary

initial_salary=$(($initial_salary+$salary))
echo "Total salary for "$day "working days:" $initial_salary

done
