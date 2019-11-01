#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers)

my @list1 = qw(test 14 26 test2);
my @list2 = sort num_last (@list1);
print "@list2\n";

sub num_last {
  my ( $num_a, $num_b );
  my $retval;
  $num_a = $a =~ /^[\d]/msx;
  $num_b = $b =~ /^[\d]/msx;
  if ( $num_a && $num_b ) {
    $retval = $a <=> $b;
  }
  elsif ($num_a) {
    $retval = 1;
  }
  elsif ($num_b) {
    $retval = -1;
  }
  else {
    $retval = $a cmp $b;
  }
  return $retval;
}
