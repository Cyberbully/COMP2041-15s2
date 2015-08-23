#!/bin/sh

# Enter pipeline/shell script below.

sort -n -t "," -k 3 marks.txt | cut -d "," -f 3 | uniq -u | head -7
