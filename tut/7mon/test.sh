#!/bin/sh

#shell to test example python > perl
#collab by OLIVER AND VANESSA
#not plagarism because not the task
#and we were bored
#hi andrew taylor
# HI MUM

for directory in "$@"
do
    echo "------------------------SUBSET $directory----------------------------"
    
    for perl_file in ./samples/$directory/*.pl
    do
        echo "Attempting $perl_file translation..."
        
        base="`basename "./samples/$directory/$perl_file" .pl`"
        extra=""
        
        # find args
        if [ -f "./samples/$directory/$base.arguments" ]
        then
            echo "arguments found"
            extra="`cat "./samples/$directory/$base.arguments"`"
        fi
        
        # find input
        if [ -f "./samples/$directory/$base.input" ]
        then
            echo "input file found"
            extra="$extra < ./samples/$directory/$base.input"
        fi
        
        # assume temp?.txt doesn't exist
        eval "perl ./perl2python < ./$perl_file > temp.py"
        eval "python2.7 -u ./temp.py $extra > temp1.txt"
        eval "perl -w './$perl_file' $extra > temp2.txt" 
        
        if ! [ "`diff temp1.txt temp2.txt`" ]
        then
            echo "$perl_file translation successful!"
        else
            echo "Invalid $perl_file translation"
            diff temp2.txt temp1.txt
        fi
        
        # remove temp files
        rm temp1.txt temp2.txt temp.py
        echo "------------------------------------------------------------"
    done
done
