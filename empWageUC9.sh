#!/bin/bash -x

partTime=1;
fullTime=2;
maximumHoursPerMonth=4;
empRatePerHour=20;
numberofworkingdays=20;

totalempHours=0;
totalworkingdays=0;

function getworkingHours()
{

        case $empcheck in
                $fullTime)
                        empHours=8;;
                $partTime)
                        empHours=4;;
                *)
                        empHours=0;;
        esac
        echo $empHours
}

while [[ $totalempHours -lt $maxHoursPerMonth && $totalworkingdays -lt $numberofworkingdays ]]
do
        ((totalworkingdays++))

        empcheck=$((RANDOM%3));
	empHours="$( getworkingHours $empcheck )"

        totalempHours=$(($totalempHours+$empHours));
	dailyWage[$totalworkingdays]=$(($empHours*$empRatePerHour))
done
totalsalary=$(($totalempHours+$empRatePerHour));
echo ${dailyWage[@]}


