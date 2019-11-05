#!/usr/bin/env perl

use strict;
use warnings;
use Carp qw(croak);
use IO::Interactive qw(is_interactive);
our $VERSION = '1.00';

opendir my $dir, q{.}
  or croak "Cannot open directory: $!";
my @files = readdir $dir;
print_fileattrs(@files);
closedir $dir || croak "Unable to close directory: $!";

sub print_fileattrs {    ## no critic (ProhibitExcessComplexity)
  my @filenames = @_;
  for my $file (@filenames) {
    print "File $file: \n\n";
    print "File is block device.\n"
      if ( -b $file );
    print "File is character device.\n"
      if ( -c _ );
    print "File is directory.\n"
      if ( -d _ );
    print "File is ordinary file.\n"
      if ( -f _ );
    print "File's setgid is set.\n"
      if ( -g _ );
    print "File's sticky bit is set.\n"
      if ( -k _ );
    print "File is symbolic link.\n"
      if ( -l $file );
    print "File is text file.\n"
      if ( -T _ );
    print "File is owned by user.\n"
      if ( -o _ );
    print "File is named pipe.\n"
      if ( -p _ );
    print "File exists.\n"
      if ( -e _ );
    print "File is readable.\n"
      if ( -r _ );
    print "File is non-empty.\n"
      if ( -s _ );
    print "File is terminal.\n"
      if ( is_interactive($file) );
    print "File is binary.\n"
      if ( -B _ );
    print "File's setuid is set.\n"
      if ( -u _ );
    print "File is writable.\n"
      if ( -w _ );
    print "File is executable.\n"
      if ( -x _ );
    print "File is empty.\n"
      if ( -z _ );
    my $lastaccessed = ( -A _ );
    print "File was accessed $lastaccessed days ago.\n";
    my $inodeaccessed = ( -C _ );
    print "INode was accessed $inodeaccessed days ago.\n";
    my $filemodified = ( -M _ );
    print "File was modified $filemodified days ago.\n";
    print "File owned by real user only.\n"
      if ( -O _ );
    print "File readable by real user only.\n"
      if ( -R _ );
    print "File is a socket.\n"
      if ( -S _ );
    print "File writable by real user only.\n"
      if ( -W _ );
    print "File executable by real user only.\n"
      if ( -X _ );
    print "\n\n";
  }
  return;
}
