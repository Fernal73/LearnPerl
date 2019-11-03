#!/usr/bin/env perl
use strict;
use warnings;

our $VERSION = '1.00';

my @pitcherfields = ( "NAME", "KEY", "GP", "W",  "ERA" );
my @playerfields  = ( "NAME", "KEY", "GP", "HR", "RBI", "BA" );

# Build the player database by reading from standard input.
# %playerbase contains the database, @playerlist the list of
# players (for later sequential access).
my $playercount = 0;
my @playerlist;
my @fields;
my %playerbase;
my @words;
while ( my $input = <> ) {
  last if !defined $input;
  $input =~ s/^\s+|\s+$//g;
  @words = split /\s+/msx, $input;
  next if scalar @words == 0;
  $playerlist[$playercount++] = $words[0];
  if ( $words[1] eq "player" ) {
    @fields = @playerfields;
  }
  else {
    @fields = @pitcherfields;
  }
  my $count;
  for ( $count = 1 ; $count <= @words ; $count++ ) {
    $playerbase{$words[0] . $fields[$count - 1]} =
      $words[$count - 1];
  }
}

# now, print out pitcher win totals and player home run totals
foreach my $player (@playerlist) {
  print("$player: ");
  if ( $playerbase{$player . "KEY"} eq "player" ) {
    my $value = $playerbase{$player . "HR"};
    print("$value home runs\n");
  }
  else {
    my $value = $playerbase{$player . "W"};
    print("$value wins\n");
  }
}
