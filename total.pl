#!/usr/bin/env perl
use strict;
use warnings;

our $VERSION = '1.00';

my $total = get_total();
print "The total is $total\n";

sub get_total {
  my $value     = 0;
  my $inputline = <>;
  return 0 if !defined $inputline;
  $inputline =~ s/^\s+|\s*\n$//msxg;
  my @subwords = split /\s+/msx, $inputline;
  my $index    = 0;
  while ( $subwords[$index] ne q{} ) {
    last if !defined $subwords[$index + 1];
    $value += $subwords[$index++];
  }
  return $value;
}
