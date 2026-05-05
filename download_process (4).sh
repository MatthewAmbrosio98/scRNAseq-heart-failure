#!/bin/bash

# Load environment
module load miniforge3
conda activate sra

# Create directories
mkdir -p data/fastq/HF data/fastq/healthy

# Convert SRA to FASTQ (Heart Failure)
fasterq-dump --split-files --threads 16 \
  --outdir data/fastq/HF \
  data/sra/HF/SRR15835812/SRR15835812.sra

# Convert SRA to FASTQ (Healthy - requires technical reads)
fasterq-dump --include-technical --split-files --threads 16 \
  --outdir data/fastq/healthy \
  data/sra/healthy/SRR15835815/SRR15835815.sra

# Compress FASTQ files
pigz -p 16 data/fastq/HF/*.fastq
pigz -p 16 data/fastq/healthy/*.fastq

# Rename files for Cell Ranger format
mv data/fastq/HF/SRR15835812_2.fastq.gz data/fastq/HF/SRR15835812_S1_L001_R1_001.fastq.gz
mv data/fastq/HF/SRR15835812_3.fastq.gz data/fastq/HF/SRR15835812_S1_L001_R2_001.fastq.gz

mv data/fastq/healthy/SRR15835815_2.fastq.gz data/fastq/healthy/SRR15835815_S1_L001_R1_001.fastq.gz
mv data/fastq/healthy/SRR15835815_3.fastq.gz data/fastq/healthy/SRR15835815_S1_L001_R2_001.fastq.gz
