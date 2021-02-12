#!/bin/bash -x

emp_rate_per_hr=20
is_full_time=1
is_part_time=2
num_of_working_days=5
max_hrs_in_month=40

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalEmpHrs -lt $max_hrs_in_month && $totalWorkingDays -lt $num_of_working_days ]]
do
   ((totalWorkingDays++))
   empCheck=$(( RANDOM%3 ))
   case $empCheck in
      $is_full_time)
         empHrs=8
         ;;
      $is_part_time)
         empHrs=4
         ;;
      *)
         empHrs=0
         ;;
   esac

	wage=$(($emp_rate_per_hr*$empHrs))
	dailyWage[$totalWorkingDays]=$wage
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($totalEmpHrs*$emp_rate_per_hr))
echo "Daily Wage : "${dailyWage[@]}
echo "Day :"${!dailyWage[@]}
echo "Total Salary is "$totalSalary
