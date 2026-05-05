<<<<<<< HEAD
# scRNA-seq Heart Failure Analysis

## Overview
This project performs a single-cell RNA sequencing (scRNA-seq) analysis comparing healthy and heart failure human heart tissue using dataset GSE183852.

## Files

### final_project_genom_II.Rmd
Main R Markdown file containing the full analysis (Introduction, Methods, Results, Discussion).

### final_project_genom_II_updated.Rmd
R Markdown that should be used for knitting purposes (the previous one did not have the correct data paths)

### final_project_genom_II.html
Knitted output of the R Markdown file.

### references.bib
BibTeX file containing all references used in the manuscript.

### cellranger_run.sh
Script used to process raw sequencing data using Cell Ranger.

### download_process.sh
Script used to download and prepare raw data.

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
