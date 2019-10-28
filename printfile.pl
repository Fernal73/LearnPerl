#!/usr/bin/env perl
use strict;
use warnings;
our $VERSION = '1.00';
my $line;
my $file = 'words.txt';
if ( open my $fh, $file or die "Could not open $file: $!" ) {
  $line = <$fh>;
  while ( $line ne q{} && $line ne q{} ) {
    print $line;
    last if eof;
    $line = <$fh>;
  }
}
