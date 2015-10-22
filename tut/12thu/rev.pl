#!/usr/bin/perl -w

while ($line = <STDIN>) {
    chomp $line;
    print join(" ", reverse(split /\s+/, $line)), "\n";
}
