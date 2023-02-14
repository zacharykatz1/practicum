#!/bin/bash
#$ -cwd -l mem=3g,time=01:00:00 -S /bin/bash -N JOBa1 -j y -t 1-10

currind=$SGE_TASK_ID
module load R/4.2.2

# R=/nfs/apps/R/4.2.2/bin/R
export R_LIBS_USER=/ifs/scratch/msph/software/R/library422:/ifs/home/msph/biostat/zak2132/R_LIB:/ifs/scratch/msph/software/R/library:$R_LIBS_USER

Rscript --vanilla --args $currind < practicum_hplc_zk.R
