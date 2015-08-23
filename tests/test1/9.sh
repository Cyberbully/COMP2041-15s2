#!/bin/sh

# Enter shell script or pipeline below.

for arg in "$@"
do
    sed -r -e 's/^([^aeiou]*)([aeiou])([^aeiou]*)([aeiou])/\1\4\3\2/gi' "$arg"
done
