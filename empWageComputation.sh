#!/bin/bash -x

# variables
fullTime=2
absent=0
partTime=1
wagePerHour=20
officeFullTimeHours=8
officePartTimeHours=4
daysPerMonth=20

declare -a dailyWages
workingHours=0
totalWage=0
monthlyWages=0
countOfDays=0
totalWorkingHours=0

# portals
portalRandom=0



# functions

workingHoursFun(){
    case $portalRandom in
        $fullTime)
            # full time
            workingHours=$officeFullTimeHours
        ;;
        $partTime)
            # part time
            workingHours=$officePartTimeHours
        ;;
        $absent)
            # absent
            workingHours=0
        ;;
    esac
}

countingFun(){
    totalWorkingHours=$(($totalWorkingHours + workingHours))
    countOfDays=$(($countOfDays + 1))
}

randomGen(){
    local range=$1
    portalRandom=$(($RANDOM % $range))
}

# brians
while (( $totalWorkingHours < 100 & $countOfDays < 20 ))
do
    randomGen 3
    workingHoursFun
    countingFun
    totalWage=$(($workingHours * $wagePerHour))
    dailyWages[$countOfDays]=$totalWage
    monthlyWages=$(($monthlyWages + $totalWage))

done
