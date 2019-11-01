#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my %wordlist;
while ( my $inputline = <> ) {
  while ( $inputline =~ /(\b[[:upper:]]\S+)/gmxs ) {
    my $word = $1;
    $word =~ s/[;.,:-]$//msx;
    $wordlist{$word} += 1;
  }
}
print "Capitalized words and number of occurrences:\n";
foreach my $capword ( keys %wordlist ) {
  print "$capword: $wordlist{$capword}\n";
}
