#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = 1.0;
my $done  = 0;
my $count = 1;
print "This line is printed before the loop starts.\n";
while ( $done == 0 ) {
  print "The value of count is ", $count, "\n";
  if ( $count == 3 ) {
    $done = 1;
  }
  $count = $count + 1;
}
print "End of loop.\n";
