#!/usr/bin/env perl
use strict;
use warnings;
use English qw(-no_match_vars);
use IO::Handle;
use Perl6::Form;

our $VERSION = '1.00';

my $text = form
'===================================',
'Here is the text I want to display.',
'===================================';

print $text;
