#!/bin/sh


asdf="lookat thatboot"

echo $asdf

asdf="`echo "$asdf" | sed -r -e 's/o/1/g'`"

echo $asdf

if grep "COMP2049" sample > /dev/null
then
    echo "yyy"
else
    echo "fff"
fi
