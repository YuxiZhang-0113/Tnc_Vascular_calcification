#!/bin/bash
# 初始化 conda
source ~/.bashrc
eval "$(conda shell.bash hook)"  
conda activate velo

cellranger_gtf=/home/yyyuxi/software/cellranger/gtf/rno/genes.gtf
cellranger_outDir=/home/yyyuxi/vascular/scRNA/Rno/vascular_our_data/C1 

rmsk_gtf=/home/yyyuxi/software/velocyto/rno_rmsk.gtf

velocyto run10x -m $rmsk_gtf  $cellranger_outDir $cellranger_gtf 
