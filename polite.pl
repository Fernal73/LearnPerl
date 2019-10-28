#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
print "Ask me a question politely:\n";
my $question = <>;
if ( $question =~ /please/ms ) {
  print "Thank you for being polite!\n";
}
else {
  print "That was not very polite!\n";
}
