#!/usr/bin/perl -w

%all_words = ();
@words = split /\W+/, lc(do {local $/; <> });
foreach $word (@words) {
    $all_words{$word}++;
}

foreach $key (sort { $all_words{$a} <=> $all_words{$b} }  keys %all_words) {
    print "$key $all_words{$key}\n";
}
