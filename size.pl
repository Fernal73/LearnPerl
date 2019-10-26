#!/usr/bin/env perl
use strict;
use warnings;
use Readonly;
Readonly my $FIRST_VALUE  => 1_234_567_890;
Readonly my $SECOND_VALUE => 1_234_567_890_123_456;
Readonly my $THIRD_VALUE  => 12_345_678_901_234_567_890;
Readonly my $FOURTH_VALUE => 123_456_789_012_345_678_901_234_567_890;
our $VERSION = 1.0;
my $value = $FIRST_VALUE;
print "first value is $value\n";
$value = $SECOND_VALUE;
print "second value is $value\n";
$value = $THIRD_VALUE;
print "third value is $value\n";
$value = $FOURTH_VALUE;
print "fourth value is $value\n";
