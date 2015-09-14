#!/usr/bin/perl -w

if (@ARGV == 0) {
    die "Usage: $0 <URL";
}

$freq = 0;
if ($ARGV[0] eq "-f") {
    $freq = 1;
    shift @ARGV;
}

%count = ();

for $url (@ARGV) {
    $webpage = lc(`wget -O- -q $url`);
    $webpage =~ s/<!--.*?-->//g;
    while ($webpage =~ /<\s*(\w+)/g) {
        $count{$1}++;
    }
}

@ks = sort keys %count;
if ($freq) {
    @ks = sort {$count{$a} <=> $count{$b}} keys %count;
}
foreach $tag (@ks) {
    print "$tag $count{$tag}\n";
}
