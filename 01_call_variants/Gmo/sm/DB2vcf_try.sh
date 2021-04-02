#!/bin/bash
#SBATCH -J DB2vcf
#SBATCH -o DB2vcf.%j.out
#SBATCH -e DB2vcf.%j.err
#SBATCH -p shared
#SBATCH -n 1
#SBATCH -t 6-00:00:00
#SBATCH --mem=40000

module load Anaconda3/5.0.1-fasrc02
source activate gatk

gatk GenotypeGVCFs --java-options "-Xmx30000m" -R /n/holyscratch01/informatics/alex_lg/CodGenotyping/reference/Gadmor3.fasta -V gendb://gatk/02_genomicsDB/DB_L6/ -L NC_044050.1:20889496-23104933 -O Gmor_NC_044050.1:20889496-23104933.vcf