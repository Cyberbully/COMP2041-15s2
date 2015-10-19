#!/usr/bin/perl -w

%counts = ();
while ($line = <>) {
    chomp $line;
    for $c (split //, $line) {
        if ($c =~ /[0-9A-Za-z]/) {
            $counts{$c}++;
        }
    }
}

for $chr (sort keys %counts) {
    print "'$chr' occurred $counts{$chr} times\n";
}   
