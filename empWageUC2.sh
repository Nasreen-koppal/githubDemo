#!/bin/bash -x

present=1;
randomcheck=$((RANDOM%2));

if [ $present -eq $randomcheck ]
then
     empRatePerHour=20;
     empHour=8;
     salary=$(($empHour*$empRatePerHour));
else
     salary=0;
fi
