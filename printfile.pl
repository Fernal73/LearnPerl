#!/usr/bin/env perl
use strict;
use warnings;
use Carp qw( croak );
our $VERSION = '1.00';
my $line;
my $file = 'words.txt';
if ( open my $fh, q{<}, $file or croak "Could not open $file: $!" ) {
  $line = <$fh>;
  while ( $line ne q{} && $line ne q{} ) {
    print $line;
    last if eof;
    $line = <$fh>;
  }
  close $fh or croak "unable to close: $!";
}
