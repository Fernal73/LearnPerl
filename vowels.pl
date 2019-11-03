#!/usr/bin/env perl
use strict;
use warnings;
use Perl6::Form;

our $VERSION = '1.00';

my @vowels;
my %vowelcount = qw(a 0 e 0 i 0 o 0 u 0);
while ( my $line = <> ) {
  $line =~ s/[^aeiou]//igsmx;
  @vowels = split //msx, $line;
  foreach my $vowel (@vowels) {
    $vowelcount{$vowel} += 1;
  }
}

my $format = form
  '==========================================================',
  'Number of vowels found in text file:',
  'a: {<<<<<} e: {<<<<<}',
  $vowelcount{'a'}, $vowelcount{'e'},
  'i: {<<<<<} o: {<<<<<}',
  $vowelcount{'i'}, $vowelcount{'o'},
  'u: {<<<<<}',
  $vowelcount{'u'},
  '==========================================================';

print $format;
