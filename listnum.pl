#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
print "Enter the start number:\n";
my $start = <>;
chomp $start;
print "Enter the end number:\n";
my $end = <>;
chomp $end;
my @list  = ( $start .. $end );
my $count = 0;
my $size  = scalar @list;

if ( $size == 0 ) {
  exit 0;
}
print "Here is the list:\n";
while ( $count < $size ) {
  print "$list[$count]\n";
  $count++;
}
