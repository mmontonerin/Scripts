#!/usr/bin/perl

use warnings;
use strict;

#usage: ./fasta_concatenate.pl <fasta_file> sequence_header <new_fasta>
#
#Written by Merce Montoliu-Nerin
#
#It will concatenate a multifasta file into an only sequence fasta. 
#

open(FASTA, "<$ARGV[0]") || die("Usage: ./fasta_concatenate.pl <fasta_file> sequence_header <new_fasta>\nBe sure to specify a short header, compatible with most programs!\n$!,aborted"); #Open original fasta to concatenate

open (OUTPUT,">$ARGV[2]"); #new concatenated fasta

#Print fasta header and a new line
print OUTPUT ">$ARGV[1]"\n;

#Read fasta file and only print sequences without a new line
while (my $line = <FASTA>){
	chomp $line;
		{
		if ($line =~ /^>.+/)
			{
			next;
			}
		else
			{
			print OUTPUT $line;
			}
		}
	}
exit;

