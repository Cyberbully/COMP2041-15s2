#!/usr/bin/perl -w

print $#ARGV+1, "\n"; 
print scalar(@ARGV), "\n";

$num_args = @ARGV;
print $num_args, "\n";

print @ARGV, "\n";
print "@ARGV\n";
