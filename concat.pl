#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $resultstring = q{};
print "Enter your input - type an empty line to quit\n";
my $input = <>;
chomp $input;
while ( $input ne q{} ) {
  $resultstring .= $input;
  $input = <>;
  chomp $input;
}
print "Here is the final string:\n";
print "$resultstring\n";
