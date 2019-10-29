#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';

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
    print "$date is a valid date\n";
  }
  elsif ($olddate) {
    print "$date is not in the 20th century\n";
  }
  else {
    print "$date is not a valid date\n";
  }
}
