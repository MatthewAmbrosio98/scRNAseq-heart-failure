<<<<<<< HEAD
# scRNA-seq Heart Failure Analysis

## Overview
This project performs a single-cell RNA sequencing (scRNA-seq) analysis comparing healthy and heart failure human heart tissue using dataset GSE183852.

## Files

### final_project_genom_II.Rmd
Main R Markdown file containing the full analysis (Introduction, Methods, Results, Discussion).

### final_project_genom_II_updated.Rmd
R Markdown that should be used for knitting/cloning purposes (the previous one did not have the correct data paths)
USE THIS FILE FOR REPRODUCING

### final_project_genom_II.html
Knitted output of the R Markdown file.

### references.bib
BibTeX file containing all references used in the manuscript.

### cellranger_run.sh
Script used to process raw sequencing data using Cell Ranger.

### download_process.sh
Script used to download and prepare raw data.

## Data Files

This repository includes two Cell Ranger output files in the `data/` directory:

- `filtered_feature_bc_matrix.h5`  
  - Single-cell gene expression matrix for the heart failure (HF) sample

- `healthy_feature_bc_matrix.h5`  
  - Single-cell gene expression matrix for the healthy control sample

These files were generated using the 10x Genomics Cell Ranger pipeline from dataset GSE183852.

They are required for reproducibility and are directly loaded in the R Markdown file using:

Read10X_h5("data/filtered_feature_bc_matrix.h5")
Read10X_h5("data/healthy_feature_bc_matrix.h5")

## Workflow
1. Data download and processing using HPC (Athena)
2. Quality control filtering
3. Normalization and feature selection
4. PCA and Harmony integration
5. Clustering and UMAP visualization
6. Cell type annotation (SingleR + marker genes)
7. Differential expression analysis
8. Functional enrichment analysis (GO and KEGG)

## Dataset
GSE183852 (NCBI GEO)

## Author
Matthew Ambrosio
=======
# scRNAseq-heart-failure
Final Project Genomics II
>>>>>>> baed5667b0334b2663b45d59eff7456c4d4d83ab
