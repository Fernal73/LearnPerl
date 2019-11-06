#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw(croak);
our $VERSION = '1.00';

start_hot_keys();
while (1) {
  my $char = getc STDIN;
  last if $char eq q{\\};
  $char =~ tr/a-zA-Z0-9/b-zaB-ZA1-90/;
  print $char;
}
end_hot_keys();
print "\n";

sub start_hot_keys {
  system 'stty cbreak'
    || croak 'Error in system call.';
  system 'stty -echo'
    || croak 'Error in system call.';
  return;
}

sub end_hot_keys {
  system 'stty -cbreak'
    || croak 'Error in system call.';
  system 'stty echo'
    || croak 'Error in system call.';
  return;
}
