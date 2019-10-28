#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

# this program asks for a number, n, and prints 2 to the
# exponent n
print 'Enter the exponent to use: ';
my $exponent = <>;
chomp $exponent;
print "Two to the power $exponent is ", 2**$exponent, "\n";
