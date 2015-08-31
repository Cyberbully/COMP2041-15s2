#!/usr/bin/perl -w

%names = ();
%streets = ();
%towns = ();
%phones = ();

open(PEOPLE, 'people.txt') or die('no file found');
while ($line = <PEOPLE>) {
    chomp $line;
    ($key, $name, $street, $town) = split(/,/, $line);
    $names{$key} = $name;
    $streets{$key} = $street;
    $towns{$key} = $town;
}

open(PHONES, 'phones.txt') or die ('no phones found');
while ($line = <PHONES>) {
    chomp $line;
    ($key, $type, $number) = split(/,/, $line);
    $phones{$key}{$type} = $number;
}

close PHONES;
close PEOPLE;

for $key (keys %names) {
    print "$names{$key}\n$streets{$key}, $towns{$key}\n";
    print "Phones: ";
    @to_print = ();
    if (defined($phones{$key})) {
        for $type (keys $phones{$key}) {
            push @to_print, "$phones{$key}{$type} ($type)";
        }
        print join(", ", @to_print);
    }
    print "\n\n";
}
