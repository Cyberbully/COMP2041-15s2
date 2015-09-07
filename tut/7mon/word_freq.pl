#!/usr/bin/perl -w

%all_words = ();

while ($line = <STDIN>) {
    chomp $line;
    $line =~ tr/[A-Z]/[a-z]/;
    @words = split /\W+/, $line;
    foreach $word (@words) {
        $all_words{$word}++;
    }
}

foreach $key (sort { $all_words{$a} <=> $all_words{$b} }  keys %all_words) {
    print "$key $all_words{$key}\n";
}
