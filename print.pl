#!/usr/bin/env perl
use strict;
use warnings;
use Perl6::Form;

our $VERSION = '1.00';

my $text = form
  '===================================',
  'Here is the text I want to display.',
  '===================================';

print $text;
