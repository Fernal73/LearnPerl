#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my @input = <>;
chomp @input;
my $string = join q{ }, @input;
print "$string\n";
