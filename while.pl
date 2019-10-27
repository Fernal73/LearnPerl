#!/usr/bin/env perl
use strict;
use warnings;
use Readonly;
our $VERSION = '1.00';
Readonly my $END => 3;
my $done  = 0;
my $count = 1;
print "This line is printed before the loop starts.\n";

while ( $done == 0 ) {
  print "The value of count is $count \n";
  if ( $count == $END ) {
    $done = 1;
  }
  $count = $count + 1;
}
print "End of loop.\n";
