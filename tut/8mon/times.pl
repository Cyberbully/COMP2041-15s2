#!/usr/bin/perl -w

die "Usage: $0 <rows> <cols> <width>" if (@ARGV != 3);
($rows, $cols, $width) = @ARGV;

# '${asdf}S
foreach $y (1..$rows) {
    printf "%${width}d", $y;
    foreach $x (1..$cols) {
        printf "%${width}d", ($x*$y);
    }
    print "\n";
}
