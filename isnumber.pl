#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $number;
while ( $number = <> ) {
  last if !defined $number;
  chomp $number;
  if ( $number =~ /^-?\d+$|^-?0[xX][\da-fA-F]+$/mxs ) {
    print "$number is a legal integer.\n";
  }
  else {
    print "$number is not a legal integer.\n";
  }
}
