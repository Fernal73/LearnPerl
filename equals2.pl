#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
print "Enter a number:\n";
my $number1 = <>;
chomp $number1;
print "Enter another number:\n";
my $number2 = <>;
chomp $number2;

if ( $number1 == $number2 ) {
  print "The two numbers are equal.\n";
}
elsif ( $number1 == $number2 + 1 ) {
  print "The first number is greater by one.\n";
}
elsif ( $number1 + 1 == $number2 ) {
  print "The second number is greater by one.\n";
}
else {
  print "The two numbers are not equal.\n";
}
print "This is the last line of the program.\n";
