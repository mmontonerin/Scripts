#!/usr/bin/env python

import pandas as pd

import argparse

parser = argparse.ArgumentParser(description='Blast parser for blastn outputs in outfmt 6')

#Input argument added, to be able to autocomplete use chmod u+x

parser.add_argument('-i','--input', help='Input table from blast output', required=True)

"""Alignment length argument added, 
default 0 means all blast results will be selected. 
type float to allow decimals.""" 

parser.add_argument('-a','--alignment_length', help='minimum alignment length', default=0, type=float)

"""Percentage of identity argument added, 
default 0 means all blast results will be selected. 
type float to allow decimals."""

parser.add_argument('-p', '--identity', help='minimum percentage identity', default=0, type=float)

#Output file argument added

parser.add_argument('-o', '--output', help='output file')

#To be able to call the arguments

args=parser.parse_args()

#Input of the table using pandas, tab separated and no header.

table=pd.read_table(args.input, sep='\t', header=None)

parsed_table=table[(table[3] > args.alignment_length) & (table[2] > args.identity)]

parsed_table.to_csv(args.output, header=None, index=False, sep='\t')

#si no funciona ./ (lo de arriba)
