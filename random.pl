#!/usr/bin/env perl
use strict;
use warnings;

our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers)
srand;
print "Random number tester.\n";

my @randnum;
for ( 1 .. 100 ) {
  $randnum[intrand()] += 1;
}

print "Totals for the digits 0 through 9:\n";
print "@randnum\n";

sub intrand {
  return int rand 10;
}
