#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

# read the array from standard input one item at a time
print "Enter the array to sort, one item at a time.\n";
my $count     = 1;
my $inputline = <>;
chomp $inputline;
my @array;
while ( $inputline ne q{} ) {
  @array[$count - 1] = $inputline;
  $count++;
  $inputline = <>;
  if ( defined $inputline ) {
    chomp $inputline;
  }
  else {
    last;
  }
}

# now sort the array
$count = 1;
my $x;
while ( $count < @array ) {
  $x = 1;
  while ( $x < @array ) {
    if ( $array[$x - 1] gt $array[$x] ) {
      @array[$x - 1, $x] = @array[$x, $x - 1];
    }
    $x++;
  }
  $count++;
}

# finally, print the sorted array
print "@array\n";
