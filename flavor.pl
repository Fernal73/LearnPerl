#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

my $string = 'regex not';
my $match  = $string =~ /(regex|regex[ ]not)/msx;
if ($match) {
  print "Text directed or DFA regex engine\n"
    if $1 eq 'regex';
  print "Regex directed or NFA regex engine\n"
    if $1 eq 'regex not';
}
