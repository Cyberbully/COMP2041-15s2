#!/bin/sh

asdf="ASDF"
echo $asdf
asdf="`echo $asdf | tr 'A' '2'`"
echo $asdf

num=2
asdf=$(($num + 1))
for i in `seq 1 100`
do
    echo $i
done

for file in ~/*
do
    echo $file
done
