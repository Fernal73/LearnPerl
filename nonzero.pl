#!/usr/bin/env perl
use strict;
use warnings;
print("Enter a number:\n");
my $number = <STDIN>;
chop($number);
printf( "Number: %f\n", $number );

if ($number) {
  print("The number is not zero.\n");
}
print("This is the last line of the program.\n");
