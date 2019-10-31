#!/usr/bin/env perl
use strict;
use warnings;
## no critic (ProhibitMagicNumbers)
our $VERSION = '1.00';

my $foo = 26;
my @foo = qw(here's a list);
testsub( \@foo, \$foo );
print "The value of \$foo is now $foo\n";
print "The value of \@foo is now @foo\n";

sub testsub {
  my ( $printarrayref, $printarray ) = @_;
  foreach my $element ( @{$printarrayref} ) {
    print "$element\n";
    $element = 'Test';
  }
  ${$printarray} = 61;
  return;
}
