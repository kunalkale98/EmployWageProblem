#!/bin/bash -x

emp_rate_per_hr=20
is_full_time=1
is_part_time=2


empCheck=$(( RANDOM%3 ))

case $empCheck in
	$is_full_time)
		empHrs=12
		echo "Employee is present full time"
			;;
	$is_part_time)
		empHrs=8
		echo "Employee is present part time"
         ;;
   *)
		empHrs=0
		echo "Employee is absent"
         ;;
esac

empWage=$(($empHrs*$emp_rate_per_hr))

echo "Employee Wage is "$empWage
