#!/bin/bash -x

partTime=1;
fullTime=2;
empRatePerHour=20;
numberofworkingdays=20;
totalsalary=0;

for (( day=1; day<=numberofworkingdays; day++ ))
do
	empcheck=$((RANDOM%3));
		case $empcheck in
		$fullTime)
			empHours=8;;
		$partTime)
			empHours=4;;
		*)
			empHours=0;;
		esac
	salary=$(($empHours*$empRatePerHour));
	totalsalary=$(($totalsalary+$salary));
done
