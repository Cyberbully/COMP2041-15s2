#!/usr/bin/perl -w

%count = ();
$sort_count = 0;

if ($ARGV[0] eq "-f") {
    $sort_count = 1;
    shift @ARGV;
}

foreach $arg (@ARGV) {
    $webpage = lc(`wget -O- -q $arg`);
    $webpage =~ s/<!--.*?-->//g;

    while ($webpage =~ /<\s*([a-z0-9]+)/g) {
        $count{$1}++;
    }
}

@keys = ();
if ($sort_count) {
    @keys = sort {$count{$a} <=> $count{$b}} keys %count;
} else {
    @keys = sort keys %count;
}

foreach $key (@keys) {
    print "$key $count{$key}\n";
}
