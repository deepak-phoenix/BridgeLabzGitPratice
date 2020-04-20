#!/bin/bash -x

# variables
present=1
absent=0
wagePerHour=20
officeHours=8
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
randomGen 2
if [ $portalRandom == $present ]
then
    # present
    workingHours=$officeHours
elif [ $portalRandom == $absent ]
then
    # absent
    workingHours=0
fi
totalWage=$(($workingHours * $wagePerHour))
