#!/bin/bash -i
#SBATCH --job-name=download
#SBATCH --partition=defq
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=4
#SBATCH --mem=10g
#SBATCH --time=20:00:00
#SBATCH --output=/gpfs01/home/mbxjg4/Jade/Output/%x.out
#SBATCH --error=/gpfs01/home/mbxjg4/Jade/Error/%x.err
#SBATCH --parsable

conda init 
conda activate gorb #environment which contains blast, perl, and bioconda
echo RUNNING ON `hostname`
cd /gpfs01/home/mbxjg4/Jade/
export DATABASE=nr #assign this value as both the folder name and the name of the database being downloaded
cd $DATABASE
update_blastdb.pl --decompress --verbose --passive $DATABASE #decompress option will unzip all tar.gz files once all 97 files have downloaded. verbose allows for an easier way of tracking progress when checking output files. passive allows for the downloads to override the 30min download 'limit' that each file has, meaning that no errors will occur when downloading files over 2.5gb. especially needed for nr.00.tar.gz which is over 30gb

#entire process should take around 15 hours but occasionally errors do occur. if some files refuse to download, use the following function to retrieve them instead, and then run the script again. it will automatically start downloading the next file

wget https://ftp.ncbi.nlm.nih.gov/blast/db/nr.$filenumber.tar.gz
