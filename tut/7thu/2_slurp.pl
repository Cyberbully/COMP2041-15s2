#!/usr/bin/perl -w

%count = ();
@words = split(/[\W]+/, lc(do { local $/; <STDIN> }));
foreach $word (@words) {
    $count{$word}++;
}

foreach $key (sort {$count{$a} <=> $count{$b}} keys %count) {
    print "$count{$key} $key\n";
}
