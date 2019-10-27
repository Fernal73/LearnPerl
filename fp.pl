#!/usr/bin/env perl
use strict;
use warnings;
use Readonly;
our $VERSION = '1.00';
Readonly my $FOURT   => 14.3;
Readonly my $HUNDRED => 100;
my $value1 = $FOURT;
my $value2 = $HUNDRED + $FOURT - $HUNDRED;
print "value 1 is $value1, value2 is $value2\n";

if ( $value1 == $value2 ) {
  print "value 1 equals value 2\n";
}
else {
  print "value 1 does not equal value 2\n";
}
printf "value 1 is %f, value2 is %f\n", $value1, $value2;
printf "value 1 is %e, value2 is %e\n", $value1, $value2;
printf "value 1 is %g, value2 is %g\n", $value1, $value2;
