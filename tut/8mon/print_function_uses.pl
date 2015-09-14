#!/usr/bin/perl -w

foreach $arg (@ARGV) {
    foreach $file (glob("*.c")) {
        open FILE, "<$file";
        while ($line = <FILE>) {
            if ($line =~ /$arg\s*\(.*\{/) {
                print "$file:$. function $arg defined\n";
            } elsif ($line =~ /$arg/) {
                if ($line =~ /(int|float|double|char)[\s\*]*$arg(.*)\;/) {
                    print "$file:$. function $arg declared\n";
                } else {
                    print "$file:$. function $arg used\n";
                }
            }
        }
        close FILE;
    }
}
