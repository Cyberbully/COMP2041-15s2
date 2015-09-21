#!/usr/bin/perl -w

print "username: ";
$username = <STDIN>;
chomp $username;

print "password: ";
$password = <STDIN>;
chomp $password;

if (!open(FILE, "<users/$username.password")) {
    print "Unknown username!\n";
} else {
    $actual_password = <FILE>;
    chomp $actual_password;
    if ($actual_password eq $password) {
        print "Ok!\n";
    } else {
        print "Unknown password!\n";
    }
}
