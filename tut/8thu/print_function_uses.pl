#!/usr/bin/perl -w

foreach $filename (glob("*.c")) {
    open FILE, "<$filename";
    while ($line = <FILE>) {
        if ($line =~ /((int|double|char|float)[\s\*]*)([\w\d_]+)\s*\(.*\)\s*{/) {
            print "$filename:$. function $3 defined\n";
        } elsif ($line =~ /((int|double|char|float)[\s\*]*)([\w\d_]+)\s*\(.*\)\s*;/) {
            print "$filename:$. function $3 declared\n";
        } elsif ($line =~ /([\w\d_]+)\s*\(.*\)\s*/) {
            print "$filename:$. function $1 used\n";
        }
    }
    close FILE; 
}
