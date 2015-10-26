#!/usr/bin/perl -w

$filename = $ARGV[0];
# "$filename = ">", a.txt"
open FH, "<", "$filename" or die "YOUR FILE IS SHIT";
@file = <FH>;
close(FH);

# asdf@dfs.com ===> <REDACTED>@dfs.com
open FH, ">", "$filename" or die "You deleted the fi;le???";
foreach $line (@file) {
    $line =~ s/[\w\d._-]+(@[\w\d._-]+)/<REDACTED>$1/g;
    print FH $line, "\n";
    # [abc] (abc)
}
close(FH);
