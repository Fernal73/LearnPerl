#!/usr/bin/env perl
use strict;
use warnings;

our $VERSION = '1.00';

my $rootname = 'parent';
my %tree =
  qw(parentleft child1 parentright child2 child1left grandchild1 child1right grandchild2 child2left grandchild3 child2right grandchild4);

# traverse tree, printing its elements

print_tree($rootname);

sub print_tree {
  my ($nodename) = @_;
  my ( $leftchildname, $rightchildname );
  $leftchildname  = $nodename . 'left';
  $rightchildname = $nodename . 'right';
  if ( defined $tree{$leftchildname} && $tree{$leftchildname} ne q{} ) {
    print_tree( $tree{$leftchildname} );
  }
  if ( defined $tree{$rightchildname} && $tree{$rightchildname} ne q{} ) {
    print_tree( $tree{$rightchildname} );
  }
  print "$nodename\n";
  return;
}
