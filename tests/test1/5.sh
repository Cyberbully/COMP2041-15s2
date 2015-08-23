#!/bin/sh

# Enter pipeline/shell script below.

egrep -i -v "^([^aeiou]*[aeiou]){10,}[^aeiou]*$" marks.txt
