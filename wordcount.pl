#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $wordcount = 0;
my $line      = <>;
while ( $line ne q{} ) {
  chop $line;
  my @array = split / /ms, $line;
  $wordcount += @array;
  $line = <>;
  if ( !defined $line ) {
    last;
  }
}
print "Total number of words: $wordcount\n";
