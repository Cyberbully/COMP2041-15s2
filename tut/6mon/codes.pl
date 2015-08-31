#!/usr/bin/perl -w

while ($line = <STDIN>) {
    while ($line =~ /([A-Z]{4}[0-9]{4})/g) {
        print $1, "\n";
    }
}
