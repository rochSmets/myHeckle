#!/bin/sh

#SBATCH --comment="heckle"
#SBATCH --job-name="blAckDog-03a"
#SBATCH --account=medium
#SBATCH --ntasks=96
#SBATCH --output="hopper.%J.log"
#SBATCH --error="hopper.%J.err"
#SBATCH --mail-type=ALL
#SBATCH --mail-user=roch.smets@lpp.polytechnique.fr

#module load openmpi/gcc/64/1.8.4
#module load phdf5/1.8.16

module load mvapich2/gcc/64/2.1rc1 cmake/3.5.0 hdf5-mvapich/1.10.5

MYRUN=$HOME/shErpA/blAckDog/run/03a/
MYEXE=$HOME/codeS/hecKle/heckle/bin/heckle.exe

time mpirun -np $SLURM_NTASKS $MYEXE $MYRUN
