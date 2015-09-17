#!/usr/bin/perl -w

for $arg (@ARGV) {
    open IN, "<$arg";
    @contents = <IN>;
    close IN;

    open OUT, ">$arg";
    foreach $line (@contents) {
        print OUT "$line" if $line !~ /^\s*$/;
    }
    close OUT;
}
