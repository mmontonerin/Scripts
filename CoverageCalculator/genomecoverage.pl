#!/usr/bin/perl

use warnings;
use strict;
use Getopt::Long qw(GetOptions);
use open qw( :encoding(UTF-8) :std ); # Make UTF-8 default encoding
use IO::Uncompress::Gunzip;


##Writen by Merce Montoliu-Nerin
#
##Usage: ./genome_coverage.pl -g/--genome <genome_assembly> [OPTIONS: -r <long_reads/non-paired_reads> / -r1 <read_R1> -r2 <read_R2>, -gz/--gzipped]
#
##Given a set of reads, will output the genome coverage of the produced genome assembly. If not reads are given, it will output just the genome size.
#
#
my $verbose = "";
my $gz = "";

my $assembly;
my $read = IO::Uncompress::Gunzip;
my $read1;
my $read2;


GetOptions("verbose" => \$verbose, "gzipped=s" => \$gz, "genome=s" => \$assembly






