#!/bin/sh

for arg in "$@"
do
    sed -r -e 's/^([^aeiou]*)([aeiou])([^aeiou]*)([aeiou])/\1\4\3\2/gi' "$arg"
done
