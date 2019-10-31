#!/usr/bin/env perl
use strict;
use warnings;
no warnings qw(experimental);
use Carp qw(croak);
use feature qw(switch);
our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers)

# define the strings used in printing
my @digitword = (
                  q{},   'one',   'two',   'three', 'four', 'five',
                  'six', 'seven', 'eight', 'nine',
);
my @digit10word = (
                    q{},     'ten',     'twenty', 'thirty', 'forty', 'fifty',
                    'sixty', 'seventy', 'eighty', 'ninety',
);
my @teenword = qw(ten eleven twelve thirteen fourteen fifteen
  sixteen seventeen eighteen nineteen);
my @groupword = (
                  q{},          'thousand',    'million',     'billion',
                  'trillion',   'quadrillion', 'quintillion', 'sextillion',
                  'septillion', 'octillion',   'novillion',   'decillion',
);

# read a line of input and remove all blanks, commas and tabs;
# complain about anything else
my $inputline = <>;
chomp $inputline;
$inputline =~ s/[, \t]+//gmsx;
if ( $inputline =~ /[^\d]/msx ) {
  croak "Input must be a number.\n";
}

# remove leading zeroes
$inputline =~ s/^0+//msx;
$inputline =~ s/^$/0/msx;    # put one back if they're all zero

# split into digits: $grouping contains the number of groups
# of digits, and $oddlot contains the number of digits in the
# first group, which may be only 1 or 2 (e.g., the 1 in 1,000)
my @digits = split //msx, $inputline;
if ( @digits > 36 ) {
  croak "Number too large for program to handle.\n";
}
my $oddlot   = @digits % 3;
my $grouping = int( ( @digits - 1 ) / 3 );

# this loop iterates once for each grouping
my $count = 0;
my $digit1;
my $digit2;
my $digit3;

sub digitalise {
  given ($oddlot) {
    when (1) {
      $digit1 = 0;
      $digit2 = 0;
      $digit3 = $digits[0];
      $count += 1;
    }
    when (2) {
      $digit1 = 0;
      $digit2 = $digits[0];
      $digit3 = $digits[1];
      $count += 2;
    }
    default {
      $digit1 = $digits[$count];
      $digit2 = $digits[$count + 1];
      $digit3 = $digits[$count + 2];
      $count += 3;
    }
  }
  return 1;
}

sub print_english {
  $oddlot = 0;
  if ( $digit1 != 0 ) {
    print "$digitword[$digit1] hundred ";
  }
  if (    ( $digit1 != 0 || ( $grouping == 0 && $count > 3 ) )
       && ( $digit2 != 0 || $digit3 != 0 ) )
  {
    print 'and ';
  }
  if ( $digit2 == 1 ) {
    print "$teenword[$digit3] ";
  }
  elsif ( $digit2 != 0 && $digit3 != 0 ) {
    print "$digit10word[$digit2]\n$digitword[$digit3] ";
  }
  elsif ( $digit2 != 0 || $digit3 != 0 ) {
    print "$digit10word[$digit2]$digitword[$digit3] ";
  }
  if ( $digit1 != 0 || $digit2 != 0 || $digit3 != 0 ) {
    print "$groupword[$grouping]";
    print q{,} if $grouping > 0;
    print "\n";
  }
  elsif ( $count <= 3 && $grouping == 0 ) {
    print "zero.\n";
  }
  return 1;
}

while ( $grouping >= 0 ) {
  digitalise();
  print_english();
  $grouping--;
}
