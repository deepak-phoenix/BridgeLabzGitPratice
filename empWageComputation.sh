#!/bin/bash -x

# variables
present=1
absent=0


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
    # Part time
elif [ $portalRandom == $absent ]
then
    # absent
fi
