#!/usr/bin/env perl
use strict;
use warnings;
use Readonly;
our $VERSION = '1.00';
Readonly my $NUM1 => 6.02e+23;
Readonly my $NUM2 => 11.4;
Readonly my $NUM3 => 5.171e+22;
Readonly my $NUM4 => -2.5;
my $result = $NUM1 + $NUM2 - $NUM3 + $NUM4;
print "$NUM1 + $NUM2 - $NUM3 + $NUM4 = \n";
print "$result\n";
## no critic (MismatchedOperator)
$result = '26' + '0xce' + '1';
print "$result\n";
## use critic
