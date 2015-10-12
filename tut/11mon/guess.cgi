#!/usr/bin/perl -w

use CGI qw/:all/;

print <<eof;
Content-Type: text/html

<!DOCTYPE html>
<head>
    <title>Guessing Game</title>
</head>
<body>
eof

$number_to_guess = param('number_to_guess') || int(rand(100));
$guessed = param('number_guessed');

print start_form("POST");
if (defined $guessed) {
    if ($guessed > $number_to_guess) {
        print "Number $guessed too high.\n";
    } elsif ($guessed < $number_to_guess) {
        print "Number $guessed too low.\n";
    } else {
        print "Number is right. you get a new one! ";
        $number_to_guess = int(rand(100));
    }
} else {
    print "Please guess a number: ";
}
print textfield('number_guessed') . "\n";
print hidden('number_to_guess', $number_to_guess) . "\n";
print end_form;

print "</body></html>";
