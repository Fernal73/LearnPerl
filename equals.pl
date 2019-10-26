#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = 1.0;
print "Enter a number:\n";
my $number1 = <>;
chop $number1;
printf "Number 1:%f\n",$number1;
print "Enter another number:\n";
my $number2 = <>;
chop $number2;
printf "Number 2:%f\n",$number2;

if ( $number1 == $number2 ) {
  print "The two numbers are equal.\n";
}
print "This is the last line of the program.\n";
