#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
## no critic (ProhibitMagicNumbers)
my @array = ( 1, 'chicken', 1.23, '"Having fun?"', 9.33e+23 );
my $count = 1;
while ( $count <= 5 ) {
  print "element $count is $array[$count-1]\n";
  $count++;
}
