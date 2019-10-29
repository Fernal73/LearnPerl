#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $wordcount = 0;
my $line      = <>;
while ( $line ne q{} ) {
  chomp $line;
  my @array = split /[\t ]+/msx, $line;
  $wordcount += ( @array > 0 && $array[0] eq q{} ? @array - 1 : @array );
  $line = <>;
  if ( !defined $line ) {
    last;
  }
}
print "Total number of words: $wordcount\n";
