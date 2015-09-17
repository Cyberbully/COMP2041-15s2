#!/usr/bin/perl -w

die "no" if scalar(@ARGV) != 3;
($rows, $cols, $width) = @ARGV;

foreach $row (1..$rows) {
    printf "%${width}d", $row;
    foreach $col (1..$cols) {
        printf "%${width}d", ($row * $col);
    }
    printf("\n");
}
