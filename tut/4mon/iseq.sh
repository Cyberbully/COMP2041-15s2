#!/bin/sh

inc=1
start=1

if [ $# -lt 0 ]
then
    echo "Usage: ./$0 <to>"
elif [ $# -eq 1 ]
then
    end=$1
elif [ $# -eq 2 ]
then
    start=$1
    end=$2
else
    start=$1
    inc=$2
    end=$3
fi

# if [ `echo "$inc" | egrep '^[0-9]*$'` ]
curr=$start
while [ $curr -le $end ]
do
    echo "$curr"
    curr=$(($curr + $inc))
done
