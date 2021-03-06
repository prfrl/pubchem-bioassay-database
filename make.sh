#!/bin/bash -l

#PBS -j oe
#PBS -l walltime=100:00:00
#PBS -l nodes=1:ppn=8
#PBS -l mem=8gb
##PBS -q highmem

cd $PBS_O_WORKDIR

export cores="$PBS_NP"
module load R/3.2.2 
module load hmmer/3.1b2
make -e working/summarystats.txt
