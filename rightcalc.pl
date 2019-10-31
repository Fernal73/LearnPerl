#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers)

my $inputline;
my @list;
my $value;

while ( $inputline = <> ) {
  last if !defined $inputline;
  $inputline =~ s/^\s+|\s+$//gmxs;
  @list  = split /\s+/mxs, $inputline;
  $value = rightcalc(0);
  print "The result is $value.\n";
}

sub rightcalc {
  my ($index) = @_;
  my ( $result, $operand1, $operand2 );

  if ( $index + 3 == @list ) {
    $operand2 = $list[$index + 2];
  }
  else {
    $operand2 = rightcalc( $index + 2 );
  }
  $operand1 = $list[$index + 1];
  if ( $list[$index] eq q{+} ) {
    $result = $operand1 + $operand2;
  }
  elsif ( $list[$index] eq q{*} ) {
    $result = $operand1 * $operand2;
  }
  elsif ( $list[$index] eq q{-} ) {
    $result = $operand1 - $operand2;
  }
  else {
    $result = $operand1 / $operand2;
  }
  return $result;
}
