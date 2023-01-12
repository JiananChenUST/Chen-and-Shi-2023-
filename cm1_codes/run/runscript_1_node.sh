#!/usr/bin/bash
#SBATCH --job-name=CM1
#SBATCH -p bigdata
#SBATCH -N 1
#SBATCH -n 1

yhrun ./cm1.exe >& cm1.print.out
