#!/bin/bash

# Load Cell Ranger
module load cellranger

# Heart Failure sample
cellranger count \
  --id=TWCM-H1_count \
  --transcriptome=/lustre/home/ambrosiom/bios668/final_project/data/refdata-gex-GRCh38-2020-A \
  --fastqs=/lustre/home/ambrosiom/bios668/final_project/data/fastq/HF \
  --sample=SRR15835812 \
  --create-bam=true \
  --localcores=16 \
  --localmem=70

# Healthy sample
cellranger count \
  --id=TWCM-H5_count \
  --transcriptome=/lustre/home/ambrosiom/bios668/final_project/data/refdata-gex-GRCh38-2020-A \
  --fastqs=/lustre/home/ambrosiom/bios668/final_project/data/fastq/healthy \
  --sample=SRR15835815 \
  --create-bam=true \
  --localcores=16 \
  --localmem=70

