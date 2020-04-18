#!/bin/bash -x

# variables
fullTime=2
absent=0
partTime=1
wagePerHour=20
officeFullTimeHours=8
officePartTimeHours=4
workingHours=0
totalWage=0
monthlyWages=0
daysPerMonth=20

# portals
portalRandom=0



# functions

randomGen(){
    local range=$1
    portalRandom=$(($RANDOM % $range))
}

# brians
for ((counter=0; counter < $daysPerMonth; counter++))
do
    randomGen 3
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
    totalWage=$(($workingHours * $wagePerHour))
    monthlyWages=$(($monthlyWages + $totalWage))
done
