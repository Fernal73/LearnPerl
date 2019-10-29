#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

## no critic (ProhibitMagicNumbers,)

sub is_leap_year {
  my ($year) = @_;
  if ( $year % 4 != 0 ) {
    return;
  }
  if ( $year % 4 == 0 && $year % 100 != 0 ) {
    return 1;
  }
  if ( $year % 400 == 0 ) {
    return 1;
  }
  return;
}

sub is_29_feb {

  my ($date) = @_;
  my $day   = substr $date, -2;
  my $month = substr $date, -5, 2;
  if ( $day != 29 ) {
    return;
  }
  if ( $month == 2 ) {
    return 1;
  }
  return;
}

sub get_year {
  my ($date) = @_;
  if ( $date =~ /([\d]+)/mxs ) {
    return $1;
  }
}

# handle 31-day months
my $md1 = '(0[13578]|1[02])\\2(0[1-9]|[12]\\d|3[01])';

# handle 30-day months
my $md2 = '(0[469]|11)\\2(0[1-9]|[12]\\d|30)';

# handle February, without worrying about whether it's
# supposed to be a leap year or not
my $md3 = '02\\2(0[1-9]|[12]\\d)';
my $date;
my $match;
my $olddate;
while ( $date = <> ) {
  last if !defined $date;
  chomp $date;

  # check for a twentieth-century date
  $match = $date =~ /^(19)?\d\d([.-\/:])($md1|$md2|$md3)$/mxs;

  # check for a valid but non-20th century date
  $olddate = $date =~ /^(\d{1,4})(.)($md1|$md2|$md3)$/mxs;
  if ($match) {
    if ( !is_29_feb($date) ) {
      print "$date is a valid date\n";
      next;
    }
    if ( is_29_feb($date) && is_leap_year( get_year($date) ) ) {
      print "$date is a valid date\n";
      next;
    }
    print "$date is a not a valid date\n";
  }
  elsif ($olddate) {
    if ( !is_29_feb($date) ) {
      print "$date is a valid date but not in the 20th century.\n";
      next;
    }
    if ( is_29_feb($date) && is_leap_year( get_year($date) ) ) {
      print "$date is a valid date but not in the 20th century.\n";
      next;
    }
    print "$date is a not a valid date.\n";
  }
  else {
    print "$date is not a valid date\n";
  }
}
