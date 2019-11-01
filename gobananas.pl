#!/usr/bin/env perl
use strict;
use warnings;

our $VERSION = '1.00';

my $inputline = 'oranges 5 apples 7 bananas 11 cherries 6';
$inputline =~ s/^\s+|\s+\n$//msxg;
my %fruit = split /\s+/msx, $inputline;
print "Number of bananas: $fruit{\"bananas\"}\n";
