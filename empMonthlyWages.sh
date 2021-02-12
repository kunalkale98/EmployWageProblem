#!/bin/bash -x

emp_rate_per_hr=20
is_full_time=1
is_part_time=2
num_of_working_days=20

totalEmpHrs=0
totalWorkingDays=0

while [[ $totalWorkingDays -lt $num_of_working_days ]]
do
   ((totalWorkingDays++))
   empCheck=$(( RANDOM%3 ))
   case $empCheck in
      $is_full_time)
         empHrs=12
         ;;
      $is_part_time)
         empHrs=8
         ;;
      *)
         empHrs=0
         ;;
   esac

totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$emp_rate_per_hr))
echo "Monthly Wage: "$totalSalary
