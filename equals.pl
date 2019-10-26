#!/usr/bin/env perl
use strict;
print ("Enter a number:\n");
my $number1 = <STDIN>;
chop ($number1);
printf ("Number 1:%f\n",$number1);
print ("Enter another number:\n");
my $number2 = <STDIN>;
chop ($number2);
printf ("Number 2:%f\n",$number2);
if ($number1 == $number2) {
  print ("The two numbers are equal.\n");
}
print ("This is the last line of the program.\n");
