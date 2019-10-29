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
my @words;
while ( $line ne q{} ) {
  @words = split /\bthe\b/ixsm, $line;
  $thecount += @words - 1;
  $line = <>;
  last if !defined $line;
}
print "Number of 'the's (case-insensitive): $thecount\n";
