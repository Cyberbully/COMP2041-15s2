#!/usr/bin/perl -w
%dict = ();
$dict{""} = 1;
$dict{0} = 2;
$dict{"abc"} = 3;

for $key (keys %dict) {
    print "$key\n";
}
