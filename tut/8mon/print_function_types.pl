#!/usr/bin/perl -w

foreach $file (@ARGV) {
    open FILE, "<$file";
    while ($line = <FILE>) {
        if ($line =~ /\s*((int|double|char|float)[\s\*]*)([\d\w_]+)\s*\((.*)\)\s*{/) {
            $type = $1;
            $name = $3;
            $args = $4;
            $type =~ s/\s*$//g;
            print "function type=$type\n";
            print "function name=$name\n";
            while ($args =~ /((int|double|char|float)[\s\*]*)\s*([\w\d_]+)/g) {
                print "parameter type=$1\n";
                print "parameter name=$3\n";
            }
        }
    }
    close FILE;
}
