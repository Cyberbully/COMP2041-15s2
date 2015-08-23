#!/bin/sh

# Enter pipeline/shell script below.

for filename in q8/*
do
    if grep "boohoo" "$filename" > /dev/null 
    then
        wc -l "$filename"
    fi
done
