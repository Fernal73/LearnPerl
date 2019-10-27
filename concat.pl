#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $resultstring = q{};
print "Enter your input - type an empty line to quit\n";
my $input = <>;
chop $input;
while ( $input ne q{} ) {
  $resultstring .= $input;
  $input = <>;
  chop $input;
}
print "Here is the final string:\n";
print "$resultstring\n";
