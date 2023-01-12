#!/bin/bash
#SBATCH -J base_  #Slurm job name
#SBATCH --mail-user=jchenfw@connect.ust.hk 
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-type=fail
#SBATCH -p cpu-share
#SBATCH -N 3 -n 120 

cd ./

#module purge
#module load autotools prun
#module load intel openmpi3
#module load netcdf netcdf-fortran

module purge
module load autotools prun
module load gnu8
module load openmpi3
module load netcdf
module load netcdf-fortran
module load pnetcdf



mpirun -np 120 ./cm1.exe >& cm1.print.out
