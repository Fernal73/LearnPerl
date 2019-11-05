#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw(croak);

our $VERSION = '1.00';

my @array = qw(This is a test);
open my $TEMPFILE, '>', 'file1'
  || croak 'Unable to open file1';
foreach my $element (@array) {
  print {$TEMPFILE} "$element\n";
}
close $TEMPFILE
  || croak 'Unable to close file1';
open $TEMPFILE, '<', 'file1'
  || croak 'Unable to open file1';
print_lines($TEMPFILE);
close $TEMPFILE
  || croak 'Unable to close file1';

sub print_lines {
  my ($TEMP) = @_;
  while (1) {
    my $skipback = tell $TEMP;
    my $line     = <$TEMP>;
    last if !defined $line;
    print $line;
    $line = <$TEMP>;

    # assume the second line exists
    print $line;
    my $ret = seek $TEMP, $skipback, 0;
    $line = <$TEMP>;
    print $line;
    $line = <$TEMP>;
    print $line;
  }
  return;
}
