## A collection of a few scripts done throughout different analyses

### FASTA handling scripts

**Modifications**

[fasta_concatenate.pl](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/fasta_concatenate.pl) Concatenate all contigs of a FASTA file and adds one single header name to the entire concatenated sequence

[fasta_to_phy.py](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/fasta_to_phy.py) Transform FASTA alignment to PHYLIP alignment

[keep_long_isoforms.py](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/keep_long_isoforms.py) keep only the specified number of isoforms from a specific species proteome / ortholog group.

**Re-namers**

[fasta_rename_nextdenovo.pl](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/fasta_rename_nextdenovo.pl) rename to simplified header post-running genome assembler NextDenovo

[fasta_rename_nextpolish.pl](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/fasta_rename_nextpolish.pl) rename to simplified header post-running genome assembly polisher NextPolish

[ncbi_protfasta_renamer.pl](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/ncbi_protfasta_renamer.pl) rename to simplified header proteins downloaded from NCBI

[renamer_braker_output_fasta_headers.sh](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/renamer_braker_output_fasta_headers.sh) simple sed rename post-braker output to add species short code for easier alignment analyses

[rename_pre_phy.pl](https://github.com/mmontonerin/Scripts/blob/master/fasta_handling_scripts/rename_pre_phy.pl) specific to a gene analysis, but modifiable to rename fasta headers pre-FASTA->PHYLIP transformation to a very short header
