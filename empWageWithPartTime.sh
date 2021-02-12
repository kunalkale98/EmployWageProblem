#!/bin/bash -x

emp_rate_per_hr=20
is_full_time=1
is_part_time=2

totalEmpHrs=0

empCheck=$(( RANDOM%3 ))

if [ $empCheck -eq $is_full_time ]
	then
		empHrs=12
		echo "Employee present full time"
elif [ $empCheck -eq $is_part_time ]
	then
      empHrs=8
		echo "Employee present part time"
else
	empHrs=0
	echo "Employee absent"
fi

totalSalary=$(($empHrs*$emp_rate_per_hr))
echo "Employee wage is "$totalSalary
