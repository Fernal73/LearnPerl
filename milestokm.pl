#!/usr/bin/env perl
use strict;
use warnings;
print("Enter the distance to be converted:\n");
my $originaldist = <STDIN>;
chop($originaldist);
my $miles      = $originaldist * 0.6214;
my $kilometers = $originaldist * 1.609;
print( $originaldist, " kilometers = ", $miles,      " miles\n" );
print( $originaldist, " miles = ",      $kilometers, " kilometers\n" );
