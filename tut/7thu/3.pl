#!/usr/bin/perl -w

open(FILE1, "file1")  or die ('file 1 is ded');
%words = ();
foreach $word (split(/\W+/, lc(do{local $/; <FILE1>}))) {
    $words{$word} = "lol";
}
close(FILE1);

open(FILE2, "file2") or die ('file 2 is shrekt');
foreach $word (split(/\W+/, lc(do{local $/; <FILE2>}))) {
    if (defined($words{$word})) {
        delete $words{$word};
    }
}
close(FILE2);

foreach $word (sort keys %words) {
    print "$word\n";
}
