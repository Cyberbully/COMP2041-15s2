#!/usr/bin/perl -w

@numbers = split /\D+/, do {local $/; <> };


sub isHill {
    (my @numbers) = @_;
    my $ascending = 1;
    for ($i = 1; $i <= $#numbers; $i++) {
        if ($ascending) {
            if ($numbers[$i] < $numbers[$i-1]) {
                $ascending = 0;
            } elsif ($numbers[$i] == $numbers[$i-1]) {
                return 0;
            }
        } else {
            if ($numbers[$i] >= $numbers[$i-1]) {
                return 0;
            }
        }
    }
    return 1;
}

if (!isHill(@numbers)) {
    print "not ";
}
print "hill\n";
