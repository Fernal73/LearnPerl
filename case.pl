#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
print "Enter a line of input:\n";
my $inputline = <>;
print "uppercase: \U$inputline\E\n";
print "lowercase: \L$inputline\E\n";
print "as a sentence: \L\u$inputline\E\n";
