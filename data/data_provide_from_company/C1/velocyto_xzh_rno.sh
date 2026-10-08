#!/bin/bash
# 初始化 conda
source ~/.bashrc
eval "$(conda shell.bash hook)"  # 这行确保在非交互式 shell 中初始化 conda
conda activate velo

cellranger_gtf=/home/xzh/software/cellranger/gtf/rno/genes.gtf

cellranger_outDir=/home/xzh/yyyuxi/vascular/scRNA/Rno/vascular_our_data/provide_from_company/C1 

rmsk_gtf=/home/xzh/software/velocyto/rno_rmsk.gtf

#rmsk_gtf的下载位置
#https://genome.ucsc.edu/cgi-bin/hgTables?hgsid=611454127_NtvlaW6xBSIRYJEBI0iRDEWisITa&clade=mammal&org=&db=mm39&hgta_group=allTracks&hgta_track=rmsk&hgta_table=rmsk&hgta_regionType=genome&position=&hgta_outputType=gff&hgta_outFileName=hsa_rmsk.gtf

velocyto run10x -m $rmsk_gtf  $cellranger_outDir $cellranger_gtf #比较耗时
