#!/usr/bin/perl -w

$doOpposite = 0;
$o_replace = 0;

while ($ARGV[0] =~ /-./) {
    if ($ARGV[0] eq '-v') {
        $doOpposite = 1;
        shift(@ARGV);
    } elsif ($ARGV[0] eq '-o') {
        $o_replace = 1;
        shift(@ARGV);
    } else {
        last;
    }
}

$regex = $ARGV[0];
shift(@ARGV);

if (@ARGV) {
    foreach $filename (@ARGV) {
        if (!open(FH, $filename)) {
            print STDERR "no u suck m8";
            exit 1;
        }
        printFile(FH, $regex);
        close(FH);
    }
} else {
    printFile(STDIN, $regex);
}

print "regex is ", $regex, "\n";

sub printFile {
    (my $file, my $regex) = @_;
    while ($line = <$file>) {
        chomp $line;
        if ($line =~ /($regex)/) {
            if (!$doOpposite) {
                if ($o_replace) {
                    print $1, "\n";
                } else {
                    print $line, "\n";
                }
            }
        } elsif ($doOpposite) {
            print $line, "\n";
        }
    }
}
