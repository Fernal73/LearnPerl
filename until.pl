#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = 1.0;

print("What is 17 plus 26?\n");

# the correct answer

my $correct_answer = 43;
my $input_answer   = <>;
chop($input_answer);
printf( "Number input: %f\n", $input_answer );
until ( $input_answer == $correct_answer ) {
  print("Wrong! Keep trying!\n");
  $input_answer = <>;
  chop($input_answer);
  printf( "Number input: %f\n", $input_answer );
}
print("You've got it!\n");
