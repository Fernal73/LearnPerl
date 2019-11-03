#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw(croak);
use 5.016;
our $VERSION = '1.00';

my $line = <>;
croak 'No input provided'
  if !defined $line;
$line =~ s/^\s+//msx;
$line =~ s/\s+$//msx;
foreach my $word ( reverse sort { fc $a cmp fc $b } split /[\t ]+/msx, $line ) {
  print "$word ";
}
print "\n";
