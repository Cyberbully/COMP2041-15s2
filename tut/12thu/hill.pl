#!/usr/bin/perl -w

sub isHill {
    (my @numbers) = @_;
    my $ascending = 1;
    for (my $i = 1; $i <= $#numbers; ++$i) {
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

@numbers = split /\D+/, do { local $/; <> };
if (!isHill(@numbers)) {
    print "not ";
}
print "a hill\n";
