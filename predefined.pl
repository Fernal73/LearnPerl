#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;
our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers,ProhibitAutoloading)

BEGIN {
  print "Hi! Welcome to Perl!\n";
}

nothere( 'hi', 46 );

AUTOLOAD {
  our $AUTOLOAD;
  print "subroutine $AUTOLOAD not found\n";
  print "arguments passed: @_\n";
  return;
}

END {
  print "Thank you for using Perl!\n";
}
