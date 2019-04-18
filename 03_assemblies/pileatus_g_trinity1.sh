#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N pileatus_g_trinity1
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q omni
#$ -pe sm 24
#$ -P quanah
#$ -l h_rt=48:00:00
#$ -l h_vmem=8G

 Trinity --seqType fq --max_memory 192G \ 
 --left /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pileatus_G_LHD1282_R1.fastq.gz \
 --right /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pileatus_G_LHD1282_R2.fastq.gz \
 --CPU 24 --output pileatus_g_trinity1
