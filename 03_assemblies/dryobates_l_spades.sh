#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N dryobates_l_spades
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q omni
#$ -pe sm 24
#$ -P quanah
#$ -l h_rt=48:00:00
#$ -l h_vmem=8G

spades.py --rna --pe1-1 /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1271_R1.fastq.gz \
--pe1-2 /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1271_R2.fastq.gz \
--pe2-1 /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1273_R1.fastq.gz \
--pe2-2 /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1273_R2.fastq.gz \
--pe3-1 /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1278_R1.fastq.gz \
--pe3-2 /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1278_R2.fastq.gz \
-o /lustre/scratch/jmanthey/11_transcriptomes/dryobates_l_spades --phred-offset 33 -t 24 -m 192

