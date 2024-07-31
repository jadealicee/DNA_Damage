File order
1) [Genome download](microbesonline.sh) This script was used to download all of the estimated genomes from microbesonline
2) [Extract operons of interest](extract.py) This script was used to extract data that contained operons - a TRUE value in the bOp column
3) [Archaea](filter_hr_archaea.py) OR [Bacteria](filter_hr_bacteria.py) These scripts were used to filter just the genes of interest within said operons
4) [Filename](filenamegrep.sh) This was a ruidementary method that I definitely could've automated but it was quick so I kept it
5) [NCBI database download](ncbi_datasets.sh)
6) [database_download.sh](database_download.sh)
7) [BLAST](BLAST.py)
8) [statistical analysis](Fisher.R)

Separate attempts that were scrapped:
1) [filter_mmr.py](filter_mmr.py) This was my attempt to look into another DNA repair pathway but the genes were not sufficiently annotated

Coding credits:


