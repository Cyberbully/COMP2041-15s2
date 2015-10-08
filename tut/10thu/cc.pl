#!/usr/bin/perl -w
# written by andrewt@cse.unsw.edu.au as a COMP2041 programming example
# validate a credit card number by calculating its
# checksum using Luhn's formula (https://en.wikipedia.org/wiki/Luhn_algorithm)


sub luhn_checksum($) {
    (my $number) = @_;
    my @digits = reverse(split //, $number);
    my $checksum = 0;
    for my $index (0..$#digits) {
        my $multiplier = 1 + $index % 2;
        my $d = $digits[$index] * $multiplier;
        if ($d > 9) {
            $d -= 9;
        }
        $checksum += $d;
    }
    return $checksum;
}

print luhn_checksum(1234567890123456);
