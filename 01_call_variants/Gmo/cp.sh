#!/bin/bash
#SBATCH -p shared # partition (queue)
#SBATCH -N 1 # number of nodes
#SBATCH --mem=1G #Memory requested
#SBATCH -t 3-00:00 # time (D-HH:MM)
#SBATCH -o cp.%j.out # STDOUT
#SBATCH -e cp.%j.err # STDERR

cp -R --preserve=links /n/holylfs/LABS/informatics/alex_lg/cod-pop-gen/01_call_variants/Gmo/sm/gatk ./sm/gatk