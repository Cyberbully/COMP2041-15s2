#!/usr/bin/perl -w

print add(1,2), "\n";

sub add {
    ($first, $second) = @_;
    return $first + $second;
}
