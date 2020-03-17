#!/bin/bash

#SBATCH --job-name="drive"
#SBATCH --mail-type=ALL
#SBATCH --mail-user=roch.smets@lpp.polytechnique.fr
#SBATCH --workdir="/data/smets/drive"
#SBATCH --error="err-%j.log"
#SBATCH --output="run-%j.log"
#SBATCH --requeue
#SBATCH --verbose
#SBATCH --ntasks=16

module load openmpi/1.10.2
module load hdf5/1.8.17

MYRUN=$HOME/codeS/hecKle/heckle4Me/Nlasers/
MYEXE=$HOME/codeS/hecKle/heckle4Me/build/HECKLE

srun $MYEXE $MYRUN

#exit 0
