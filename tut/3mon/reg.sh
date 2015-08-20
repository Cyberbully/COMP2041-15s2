#!/bin/sh

if [[ $1 =~ "^[0-9]+$" ]]
then
    echo "It is a number"
else
    echo "It is not a number"
fi
