#!/bin/sh

a=2
echo "$a"
a=$((a+2))
echo "$a"

for i in ~/*
do
    echo $i
done
