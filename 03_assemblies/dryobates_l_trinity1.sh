#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N dryobates_l_trinity1
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q omni
#$ -pe sm 24
#$ -P quanah
#$ -l h_rt=48:00:00
#$ -l h_vmem=8G

 Trinity --seqType fq --max_memory 192G \ 
 --left /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1271_R1.fastq.gz,/lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1273_R1.fastq.gz,/lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1278_R1.fastq.gz \
 --right /lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1271_R2.fastq.gz,/lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1273_R2.fastq.gz,/lustre/scratch/jmanthey/11_transcriptomes/01_filtered_data/D_pubescens_L_LHD1278_R2.fastq.gz \
 --CPU 24 --output dryobates_l_trinity1
 
