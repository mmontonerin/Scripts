#!/usr/bin/perl

use warnings;
use strict;
#usage: ./ncbi_protfasta_renamer.pl <fasta_file> <new_fasta>
#written by Merce Montoliu-Nerin

###Rename fasta file from ncbi protein databases, keeping protein function/name
#Starting with this:
##AAF45346.2 meiosis regulator and mRNA stability factor 1, isoform A [Drosophila melanogaster]
#to this:
#Drosophila_melanogaster_AAF45346.2 meiosis regulator and mRNA stability factor 1, isoform A
#

open(FASTA, "<$ARGV[0]") || die("Usage: ./ncbi_protfasta_renamer.pl <fasta_file> <new_fasta>\n$!,aborted"); #Opens original fasta, obtained from NCBI database

open (OUTPUT,">$ARGV[1]"); #new fasta

while (my $line = <FASTA>){
    chomp $line;
	{
         if ($line =~ /^>(.+)\ (.+)\ \[(.+)\ (.+)\]/)
		{
		print OUTPUT ">$3_$4_$1_$2\n";
		}
	else
		{
		print OUTPUT "$line\n";
		}
	}
}
exit;



