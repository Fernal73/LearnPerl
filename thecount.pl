#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw(croak);
our $VERSION = '1.00';

my $thecount = 0;
print "Enter the input here:\n";
my $line = <>;
if ( !defined $line ) {
  croak 'No input provided.';
}
while ( $line ne q{} ) {
  if ( $line =~ /\bthe\b/ixsm ) {
    $thecount += 1;
  }
  $line = <>;
  last if !defined $line;
}
print "Number of lines containing 'the' (case-insensitive): $thecount\n";
