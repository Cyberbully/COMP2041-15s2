#!/usr/bin/perl -w

foreach $filename (@ARGV) {
    open FILE, "<$filename";
    while ($line = <FILE>) {
        if ($line =~ /((int|double|char|float)[\s\*]*)([\w\d_]+)\s*\((.*)\)\s*{/) {
            $ft = $1;
            $fn = $3;
            $params = $4;
            print "function type = $ft\n";
            print "function name = $fn\n";
            while ($params =~ /((int|double|char|float)[\s\*]*)([\w\d_]+)/g) {
                print "parameter type = $1\n";
                print "parameter name = $3\n";
            }
        }
    }
    close FILE;
}
