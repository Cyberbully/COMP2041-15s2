#!/usr/bin/perl -w

while ($line = <STDIN>) {
    while ($line =~ /([A-Z]{4})([0-9]{4})/g) {
        print "$2$1\n";
    }
}
