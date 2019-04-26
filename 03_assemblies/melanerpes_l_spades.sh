#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N melanerpes_l_spades
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q Yoda
#$ -pe sm 24
#$ -P communitycluster

spades.py --rna \
--pe1-1 /lustre/scratch/sabaty/melanerpes-project/transcriptomes/01_filtered_data/M_carolinus_L_LHD1270_R1.fastq.gz \
--pe1-2 /lustre/scratch/sabaty/melanerpes-project/transcriptomes/01_filtered_data/M_carolinus_L_LHD1270_R2.fastq.gz \
--pe2-1 /lustre/scratch/sabaty/melanerpes-project/transcriptomes/01_filtered_data/M_carolinus_L_LHD1274_R1.fastq.gz \
--pe2-2 /lustre/scratch/sabaty/melanerpes-project/transcriptomes/01_filtered_data/M_carolinus_L_LHD1274_R2.fastq.gz \
--pe3-1 /lustre/scratch/sabaty/melanerpes-project/transcriptomes/01_filtered_data/M_carolinus_L_LHD1275_R1.fastq.gz \
--pe3-2 /lustre/scratch/sabaty/melanerpes-project/transcriptomes/01_filtered_data/M_carolinus_L_LHD1275_R2.fastq.gz \
-o /lustre/scratch/jmanthey/11_transcriptomes/02_assemblies/melanerpes_l_spades --phred-offset 33 -t 24 -m 500
