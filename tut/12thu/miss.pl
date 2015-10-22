#!/usr/bin/perl -w

%count = ();

while ($line = <STDIN>) {
    for $char (split //, $line) {
        if ($char =~ /[0-9a-zA-Z]/) {
           $count{$char}++; 
        }
    }
}

for $char (sort keys %count) {
    print "'$char' occured $count{$char} times\n";
}
