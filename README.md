File order
1) [Genome download](microbesonline.sh) This script was used to download all of the estimated genomes from microbesonline
2) [Extract operons of interest](extract.py) This script was used to extract data that contained operons - a TRUE value in the bOp column
3) [Archaea](filter_hr_archaea.py) OR [Bacteria](filter_hr_bacteria.py) These scripts were used to filter just the genes of interest within said operons
4) [Filename](filenamegrep.sh) This was a ruidementary method that I definitely could've automated but it was quick so I kept it
5) [NCBI genomes download](ncbi_datasets.sh) Download the full genomes that were highlighted when filtering the table
6) [statistical analysis](Fisher.R) A simple fisher test used to check if co-occurence was statistically significant

Separate attempts that were scrapped:
1) [filter_mmr.py](filter_mmr.py) This was my attempt to look into another DNA repair pathway but the genes were not sufficiently annotated
2) [database_download.sh](database_download.sh) Download the huge NR datbase from BLAST - despite this taking weeks I ended up using expasy instead
3) [BLAST](BLAST.py) This code took a minimum of 5 days to run on the HMEMQ nodes. Kept timing out



