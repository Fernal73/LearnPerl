#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $date;
while ( $date = <> ) {
  last if !defined $date;
  chomp $date;
  print "$date\n";
  my $match = $date =~ m#^(\d{2,4})([\W])(\d{2})\1(\d{2})$#xsm;
  print "$match\n";
  $date =~ s#^(\d{2,4})([\W])(\d{2})\1(\d{2})$#$1-$3-$4#xsm;
  print "$date\n";
}
