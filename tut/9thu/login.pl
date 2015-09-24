#!/usr/bin/perl -w

print "Username: ";
$username = <STDIN>;
print "Password: ";
$password = <STDIN>;

chomp $username;
chomp $password;

if (!open(FILE, "<users/$username.password")) {
    print "Username invalid\n";
} else {
    $real_password = <FILE>;
    chomp $real_password;

    if ($real_password eq $password) {
        print "Pls visit my shop.\n";
    } else {
        print "Password invalid\n";
    }
    close(FILE);
}
