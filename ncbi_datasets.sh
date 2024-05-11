#ncbi datasets command line
#ncbi datasets will not be usable later in the year (post june?) so this portion of code may not be reproducible

#create env
conda create -n ncbi_datasets

#activate env
conda activate ncbi_datasets

#install package into env
conda install -c conda-forge ncbi-datasets-cli

#download Haloquadratum walsbyi DSM 16790 genome
datasets download genome accession GCF_000009185.1 --include gff3,rna,cds,protein,genome,seq-report

#download Natronomonas pharaonis DSM 2160 genome
datasets download genome accession GCF_000026045.1 --include gff3,rna,cds,protein,genome,seq-report

#download Methanobrevibacter ruminantium M1 genome
datasets download genome accession GCF_000024185.1 --include gff3,rna,cds,protein,genome,seq-report

#download Methanosphaera stadtmanae DSM 3091 genome
datasets download genome accession GCF_000012545.1 --include gff3,rna,cds,protein,genome,seq-report

#download Aeropyrum pernix K1 genome
datasets download genome accession GCF_000011125.1 --include gff3,rna,cds,protein,genome,seq-report

#download Sulfolobus acidocaldarius DSM 639 genome
datasets download genome accession GCF_000012285.1 --include gff3,rna,cds,protein,genome,seq-report

#download Haloferax volcanii DS2 genome
datasets download genome accession GCF_000025685.1 --include gff3,rna,cds,protein,genome,seq-report

#download Thermococcus gammatolerans EJ3 genome
datasets download genome accession GCF_000022365.1 --include gff3,rna,cds,protein,genome,seq-report

#download Methanococcus maripaludis S2
datasets download genome accession GCF_000011585.1 --include gff3,rna,cds,protein,genome,seq-report