#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N pileatus_g_transrate
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q omni
#$ -pe sm 24
#$ -P quanah
#$ -l h_rt=48:00:00
#$ -l h_vmem=8G

transrate --assembly pileatus_g_spades_hard.fasta,pileatus_g_spades_soft.fasta,pileatus_g_trinity1.fasta,pileatus_g_trinity2.fasta \
--left /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pileatus_G_LHD1282_R1.fastq.gz \
--right /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pileatus_G_LHD1282_R2.fastq.gz \
--output /lustre/scratch/jmanthey/11_transcriptomes/02b_assemblies_fasta/pileatus_g_transrate/ \
--threads 24
