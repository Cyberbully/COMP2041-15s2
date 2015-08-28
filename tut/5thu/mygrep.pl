#!/usr/bin/perl -w

$opposite = 0;
$match_only_print = 0;

if ($ARGV[0] eq "-v") {
    $opposite = 1;
    shift(@ARGV);
}

if ($ARGV[0] eq "-o") {
    $match_only_print = 1;
    shift(@ARGV);
}

if (@ARGV == 0) {
    print "Usage: $0 [-v -o] <regex>";
    exit 1;
} 

my $regex = shift(@ARGV);

if (@ARGV == 0) {
    doGrep(STDIN, $regex);
} else {
    foreach my $file (@ARGV) {
        if (!open(HANDLE, "$file")) {
            print STDERR "invalid file\n";
            exit 0;
        }

        doGrep(HANDLE, $regex);

        close(HANDLE);
    }
}

sub doGrep {
    (my $HANDLE, my $regex) = @_;

    while (my $line = <$HANDLE>) {
        if ($line =~ /($regex)/) {
            chomp $line;
            if (!$opposite) {
                if ($match_only_print) {
                    print $1, "\n";
                } else {
                    print $line, "\n";
                }
            }
        } elsif ($opposite) {
            print $line;
        }
    }
}

/*

int f1(int x) {
    return x+2;
}

int f2(int x) {
    x=4;
    return x+4;
}
