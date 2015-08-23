#!/bin/sh

# Enter pipeline/shell script below.

cut -f 3 -d "," marks.txt| sort -n | uniq -c
