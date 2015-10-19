#!/usr/bin/perl -w

while ($line = <>) {
    chomp $line;
    print join(" ", reverse(split /\s+/, $line));
    print "\n";
}
