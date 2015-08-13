#!/bin/sh

while read id mark
do
    if ! [ `echo "$mark" | egrep "^[0-9]+$"` ]
    then
        echo "$id ??"
    elif [ $mark -ge 50 ]
    then
        echo "$id PS"
    else
        echo "$id FL"
    fi
done > output
