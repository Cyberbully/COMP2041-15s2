#!/bin/sh

dir=$1
echo -n "Do you wish to delete this current directory $dir? "
read response

if [ $response = "yes" ]
then
    for file in $dir/*
    do
        if [ -f "$file" ]
        then
            # rm $file
            echo "Deleted $file"
        fi
    done

    for file in $dir/* 
    do
        if [ -d "$file" ]
        then
            sh del.sh $file
        fi
    done
fi
