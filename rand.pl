#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers)
# collect the random numbers
my $count     = 1;
my @randtotal = (0) x 10;

while ( $count <= 100 ) {
  my $randnum = int rand 10;
  $randtotal[$randnum] += 1;
  $count++;
}

# print the total of each number
$count = 1;
print "Total for each number:\n";

while ( $count <= 10 ) {
  print "\tnumber $count: $randtotal[$count-1]\n";
  $count++;
}
printf "Array size: %d\n", scalar @randtotal;
