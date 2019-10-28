#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my @input = <>;
chomp @input;
@input = grep $_ ne q{},@input;
# first, reverse the order of the words in each line
my $currline = 1;
my @words;
while ( $currline <= @input ) {
  @words = split / /ms, $input[$currline - 1];
  @words = reverse @words;
  $input[$currline - 1] = join q{ }, @words, "\n";
  $currline++;
}

# now, reverse the order of the input lines and print them
@input = reverse @input;
print @input;
