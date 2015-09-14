#!/usr/bin/perl -w

# $arg = ">/etc/passwd"
foreach $arg (@ARGV) {
    open INPUT, "<$arg";
    @contents = <INPUT>;
    close INPUT;

    open OUTPUT, ">$arg";
    foreach $line (@contents) {
        print OUTPUT $line if $line !~ /^\s*$/;
    }
    close(OUTPUT);
}
