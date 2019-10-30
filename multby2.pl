#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw(croak);
our $VERSION = '1.00';
my $count = 0;
if ( !defined $ARGV[$count] ) {
  croak 'No files specified';
}
while ( defined $ARGV[$count] ) {
  my $fname = $ARGV[$count];
  $count++;
  my $ret = open my $FILE, '<', "$fname";
  if ( !$ret ) {
    print "Error opening file: $fname\n";
    next;
  }
  my @file = <$FILE>;
  $ret = close $FILE;
  if ( !$ret ) {
    print "Error closing file: $fname\n";
    next;
  }
  my $linenum = 0;
  while ( $file[$linenum] ne q{} ) {
    $file[$linenum] =~ s/\d+/$& * 2/xsmeg;
    $linenum++;
    last if !defined $file[$linenum];
  }
  $ret = open $FILE, '>', "$fname";
  print {$FILE} @file;
  $ret = close $FILE;
}
