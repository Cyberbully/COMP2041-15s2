#!/bin/sh

to_delete=$1

echo -n "Are you sure you wish to delete $to_delete? "
read ans

if [ "$ans" = "yes" ]
then
    for file in $to_delete/*
    do
        if [ -f "$file" ]
        then
            echo "Deleted $file"
            #rm $file
        elif [ -d "$file" ]
        then
            ./rmall.sh "$file"
        fi
    done
fi
