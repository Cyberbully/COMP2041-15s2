#!/usr/bin/perl -w

open(FILE1, "file1") or die ("no file1");
open(FILE2, "file2") or die ("no file2");

@file1 = split /\W+/, lc(do {local $/; <FILE1> });
@file2 = split /\W+/, lc(do {local $/; <FILE2> });

close(FILE1);
close(FILE2);

%words = ();

foreach $word (@file1) {
    $words{$word} += 1;
}

for $word (@file2) {
    if (defined $words{$word}) {
        delete $words{$word};
    }
}

foreach $word (sort keys %words) {
    print "$word\n";
}
