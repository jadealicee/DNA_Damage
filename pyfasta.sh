#splitting fasta files into smaller chunks so they can be BLASTed

#tool used to split fasta files into even chunks
conda install pyfasta

#fix the loading issue - it is outdated so the file needs to be edited manually
nano /opt/miniconda3/lib/python3.12/site-packages/pyfasta/fasta.py
change 'from collections import Mapping' to 'from collections.abc import Mapping'

#change directory
cd path/to/.faa/file

##testing speed of BLASTing chunks of different sizes before looking into regions of interest - testing on Aeropyrum pernix

#split the file into 6 chunks
pyfasta split -n 6 protein.faa

#Time taken to blast 1/6 chunks: BLAST could not finish - CPU usage limit exceeded

#split the file into 10 chunks
pyfasta split -n 10 protein.faa

#Time taken to blast 1/10 chunks: BLAST could not finish - CPU usage limit exceeded

#split the file into 20 chunks
pyfasta split -n 20 protein.faa

#Time taken to blast 1/20 chunks: BLAST could not finish - around 5 minutes

#locate regions of interest for each genome (check csv table) and blast the relevant sections.


