#!/bin/bash -x

check=$((RANDOM%2))
isPresent=1
emp_wage_per_hr=20
daily_work_hr=8

if [ $check -eq $isPresent ]
   then
      daily_wage=$(($emp_wage_per_hr*$daily_work_hr))
		echo $daily_wage
else
   echo "Employee Absent"
fi

