#!/usr/bin/perl -w

$curr_word = "";
$curr_count = 0;

while ($line = <STDIN>) {
    chomp $line;
    if ($line =~ /([0-9]+) (.*)/) {
        $word = $2;
        $count = $1;

        if ($word eq $curr_word) {
            $curr_count += $count;
        } else {
            if ($curr_count > 0) {
                printf("%d %s\n", $curr_count, $curr_word);
            }
            $curr_count = $count;
            $curr_word = $word;
        }
    }
}
if ($curr_count > 0) {
    printf("%d %s\n", $curr_count, $curr_word);
}
