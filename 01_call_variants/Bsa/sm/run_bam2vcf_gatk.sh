#!/bin/bash
#SBATCH -J sm
#SBATCH -o out
#SBATCH -e err
#SBATCH -p holy-info
#SBATCH -n 1
#SBATCH -t 30-00:00:00
#SBATCH --mem=10000

source ~/.conda/envs/snakemake/bin/activate
snakemake --snakefile Snakefile_bam2vcf_gatk --profile ./profiles/slurm
