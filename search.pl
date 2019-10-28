#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw( croak );
our $VERSION = '1.00';
( $#ARGV + 1 ) > 0 or croak 'No arguments specified.';
my $searchword = $ARGV[0];
print "Word to search for: $searchword\n";
shift @ARGV;
my $totalwordcount = my $wordcount = 0;
my $filename       = $ARGV[0];
my @words;
my $w;
my $line;

while ( $line = <> ) {
  chomp $line;
  @words = split / /ms, $line;
  $w     = 1;
  while ( $w <= @words ) {
    if ( $words[$w - 1] eq $searchword ) {
      $wordcount += 1;
    }
    $w++;
  }
  if (eof) {
    if ( defined $filename ) {
      print "occurrences in file $filename: ";
    }
    else {
      print 'occurrences : ';
    }
    print "$wordcount\n";
    $totalwordcount += $wordcount;
    $wordcount = 0;
    $filename  = $ARGV[0];
  }
}
print "total number of occurrences: $totalwordcount\n";
