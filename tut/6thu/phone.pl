#!/usr/bin/perl -w

%names = ();
%addresses = ();
%phones = ();

open(PEOPLE, "people.txt") or die("file does not exist.");
while ($line = <PEOPLE>) {
    chomp $line;
    (my $key, my $name, my $street, my $suburb) = split(/,/, $line);
    $names{$key} = $name;
    $addresses{$key} = "$street, $suburb";
}
close(PEOPLE);

open(PHONES, "phones.txt") or die ("I hate people.");
while ($line = <PHONES>) {
    chomp $line;
    ($key, $type, $phone) = split(/,/, $line);

    $phones{$key}{$type} = $phone;
}
close(PHONES);

foreach $key (sort(keys(%names))) {
    print "$names{$key}\n";
    print "$addresses{$key}\n";

    if (defined($phones{$key})) {
        @phones = ();
        foreach $type (sort(keys($phones{$key}))) {
            push @phones, "$phones{$key}{$type} ($type)";
        }
        print join(", ", @phones), "\n";
    } else {
        print "???\n";
    }

    print "\n";
}
