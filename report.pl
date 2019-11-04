#!/usr/bin/env perl
use strict;
use warnings;
use Perl6::Form;
use Carp qw(croak);
our $VERSION = '1.00';

my $company       = <>;
my $companyformat = form
  '************* {||||||||||||||||||||||||||||||} *************',
  $company;
print $companyformat;

my $grandtotal = 0;
my $custline   = <>;
croak 'No customer data input.' if !defined $custline;
while ( $custline ne q{} ) {
  my $total = 0;
  my ( $customer, $date ) = split /[#]/msx, $custline;
  my $customerformat = form
    '{<<<<<<<<<<<<<<<<<<<<<<<<<<<<<} {>>>>>>>>>>>>}',
    $customer, $date;
  print $customerformat;

  while (1) {
    my $orderline = <>;
    if ( !defined $orderline ) {
      $custline = q{};
      last;
    }
    if ( $orderline eq q{} || $orderline =~ /[#]/msx ) {
      $custline = $orderline;
      last;
    }
    my ( $item, $cost ) = split /:/msx, $orderline;
    my $orderlineformat = form
      '{<<<<<<<<<<<<<<<<<<<<<<<<<<<<<} {>>>>.<<}',
      $item, $cost;
    print $orderlineformat;
    $total += $cost;
  }

  write_total( 'Total:', $total );
  $grandtotal += $total;
}
write_total( 'Grand total:', $grandtotal );

sub write_total {
  my ( $totalstring, $total ) = @_;
  my $totalformat = form
    '{<<<<<<<<<<<<<<} {>>>>>.<<}',
    $totalstring, $total;
  print $totalformat;
  return;
}
