#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $email;
while ( $email = <> ) {
  last if !defined $email;
  chomp $email;
  if ( $email =~ /^[\w-]+(?:[.][\w-]+)*@(?:[\w-]+[.])+[:alpha:]{2,7}$/mxs ) {
    print "$email is a legal email address.\n";
  }
  else {
    print "$email is not a legal email address.\n";
  }
}
