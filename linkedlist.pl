#!/usr/bin/env perl
use strict;
use warnings;

our $VERSION = '1.00';

# initialize list to empty
my $header = q{};
my %wordlist;

sub add_word_to_list {
  my ($word) = @_;
  my ($pointer);

  # if list is empty, add first item
  if ( $header eq q{} ) {
    $header = $word;
    $wordlist{$word} = q{};
    return;
  }

  # if word identical to first element in list,
  # do nothing
  return if ( $header eq $word );

  # see whether word should be the new
  # first word in the list
  if ( $header gt $word ) {
    $wordlist{$word} = $header;
    $header = $word;
    return;
  }

  # find place where word belongs
  $pointer = $header;
  while (    $wordlist{$pointer} ne q{}
          && $wordlist{$pointer} lt $word )
  {
    $pointer = $wordlist{$pointer};
  }

  # if word already seen, do nothing
  return if ( $word eq $wordlist{$pointer} );
  $wordlist{$word}    = $wordlist{$pointer};
  $wordlist{$pointer} = $word;
  return;
}

sub print_list {
  my ($pointer);
  print "Words in this file:\n";
  $pointer = $header;
  while ( $pointer ne q{} ) {
    print "$pointer\n";
    $pointer = $wordlist{$pointer};
  }
  return;
}

while ( my $line = <> ) {

  last if !defined $line;

  # remove leading and trailing spaces
  $line =~ s/^\s+|\s+$//gmsx;
  my @words = split /\s+/msx, $line;
  foreach my $word (@words) {

    # remove closing punctuation, if any
    $word =~ s/[.,;:-]$//msx;

    # convert all words to lower case
    $word =~ tr/[[:upper:]]/[[:lower:]]/;
    add_word_to_list($word);
  }
}
print_list;

