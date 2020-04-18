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


# portals
portalRandom=0



# functions

randomGen(){
    local range=$1
    portalRandom=$(($RANDOM % $range))
}

# brians
randomGen 3
if [ $portalRandom == $fullTime ]
then
    # full time
    workingHours=$officeFullTimeHours
elif [ $portalRandom == $absent ]
then
    # absent
    workingHours=0
elif [ $portalRandom == $partTime ]
then
    # part time
    workingHours=officePartTimeHours
fi
totalWage=$(($workingHours * $wagePerHour))
