#!/usr/bin/env perl
use strict;
use warnings;
use Perl6::Form;

our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers)
my @letters;
my %lettercount;
while ( my $line = <> ) {
  $line =~ tr/[[:upper:]]/[[:lower:]]/;
  $line =~ s/[^[[:lower:]]]//gmsx;
  @letters = split //msx, $line;
  foreach my $letter (@letters) {
    $lettercount{$letter} += 1;
  }
}

write_header();
my $count = 0;
foreach my $letter ( reverse sort occurrences ( keys %lettercount ) ) {
  write_letter( $letter, $lettercount{$letter} );
  last if ( ++$count == 5 );
}

sub occurrences {
  return $lettercount{$a} <=> $lettercount{$b};
}

sub write_header {
  my ($writeheader);
  $writeheader = form 'The five most frequently occurring letters are:';
  print $writeheader;
  return;
}

sub write_letter {
  my ( $letter, $value ) = @_;
  my $writeletter = form
    '{}: {<<<<<<}',
    $letter, $value;
  print $writeletter;
  return;
}

