#!/usr/bin/perl -w

%count = ();
while ($line = <STDIN>) {
    @words = split(/[\W]+/, lc($line));
    foreach $word (@words) {
        $count{$word}++;
    }
}

foreach $key (sort {$count{$a} <=> $count{$b}} keys %count) {
    print "$count{$key} $key\n";
}
