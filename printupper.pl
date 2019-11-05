#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw(croak);
our $VERSION = '1.00';

open my $MYFILE, '<', 'words.txt'
  || croak "Unable to open input file words.txt\n";
print {*STDERR} "File words.txt opened successfully.\n";
my $line;
while ( $line = <$MYFILE> ) {
  chomp $line;
  print "\U$line\E\n";
}
close $MYFILE
  || croak 'Unable to close file words.txt';
