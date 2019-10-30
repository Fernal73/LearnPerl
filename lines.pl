#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

my $string = "This is a\ntwo-line string.";
$string =~ s/a.*o/a one/xsm;

# $string now contains "This is a one-line string."
print "$string\n";
$string = "The The first line\nThe The second line";
$string =~ s/^The//gmsx;

# $string now contains "The first line\nThe second line"
print "$string\n";
$string =~ s/e$/k/gsmx;

# $string now contains "The first link\nThe second link"
print "$string\n";
$string =~ s/k\Z/e/gsmx;
print "$string\n";
