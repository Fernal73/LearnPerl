#!/usr/bin/env perl
use strict;
use warnings;
print("Enter a line of input:\n");
my $inputline = <STDIN>;
print("uppercase: \U$inputline\E\n");
print("lowercase: \L$inputline\E\n");
print("as a sentence: \L\u$inputline\E\n");
