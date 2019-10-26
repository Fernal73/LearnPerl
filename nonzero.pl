#!/usr/bin/env perl
use strict;
print ("Enter a number:\n");
my $number = <STDIN>;
chop ($number);
print ("Number: " + $number);

if ($number) {
  print ("The number is not zero.\n");
}
print ("This is the last line of the program.\n");
