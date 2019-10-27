#!/usr/bin/env perl
use strict;
use warnings;
use Readonly;
our $VERSION = '1.00';
Readonly my $SOLUTION => 43;
print "What is 17 plus 26?\n";

# the correct answer

my $input_answer = <>;
chop $input_answer;
printf "Number input: %f\n", $input_answer;
while ( $input_answer != $SOLUTION ) {
  print "Wrong! Keep trying!\n";
  $input_answer = <>;
  chop $input_answer;
  printf "Number input: %f\n", $input_answer;
}
print "You've got it!\n";
