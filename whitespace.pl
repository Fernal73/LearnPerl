#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw(croak);
our $VERSION = '1.00';

my @input = <>;
my $count = 0;
if ( scalar @input == 0 ) {
  croak 'No input provided.';
}
while ( $input[$count] ne q{} ) {
  $input[$count] =~ s/^[ \t]+//msx;
  $input[$count] =~ s/[ \t]+\n$/\n/msx;
  $input[$count] =~ s/[ \t]+/\ /gmsx;
  $count++;
  last if !defined $input[$count];
}
print "Formatted text:\n";
print @input;
