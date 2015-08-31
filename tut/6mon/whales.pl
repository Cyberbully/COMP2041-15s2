#!/usr/bin/perl -w

$count = 0;
$string = "";

while ($line = <STDIN>) {
    if ($line =~ /([0-9]+) (.*)/) {
        $curr = $2;
        $curr_count = $1;

        if ($curr eq $string) {
            $count += $curr_count;
        } else {
            if ($count > 0) {
                print "$count $string\n";
            }
            $count = $curr_count;
            $string = $curr;
        }
    }
}

if ($count > 0) {
    print "$count $string\n";
}
