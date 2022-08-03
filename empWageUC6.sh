#!/bin/bash -x

partTime=1;
fullTime=2;
empRatePerHour=20;
numberofworkingdays=20;
totalsalary=0;
maxHoursinmonth=10;

totalempHours=0;
totalworkingdays=0;

while [[ $totalempHours -lt $maxHoursinmonth && $totalworkingdays -lt $numberofworkingdays ]]
do
	((totalworkingdays++))

	empcheck=$((RANDOM%3));

		case $empcheck in
		$fullTime)
			empHours=8;;
		$partTime)
			empHours=4;;
		*)
			empHours=0;;
		esac
	totalempHours=$(($totalempHours+$empHours));
done
totalsalary=$(($totalempHours+$empRatePerHour));
