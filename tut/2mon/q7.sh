#!/bin/sh
while read id mark
do
    # if mark < 50
        # print "FL"
    # else:
        # print PS
    case "$mark" in
        [0-9] | [0-9][0-9] | 100)
            if [ $mark -ge 50 ]
            then
                echo $id "PS"
            else
                echo $id "FL"
            fi ;;
        *) 
            echo "$id unknown" ;;
    esac
    # insert mark/grade checking here
done < input 
