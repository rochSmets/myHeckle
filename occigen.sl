#!/bin/bash
#SBATCH -J 0g
#SBATCH --constraint HSW24
#SBATCH --nodes=22
#SBATCH --ntasks=512
#SBATCH --ntasks-per-node=24
#SBATCH --threads-per-core=1
#SBATCH --time=16:00:00
#SBATCH --output="occigen.%J.log"
#SBATCH --error="occigen.%J.err"
#SBATCH --mail-type=ALL
#SBATCH --mail-user=roch.smets@lpp.polytechnique.fr

RUN=sherpa/tst3d/run/0g/

MYRUN=$HOME'/'$RUN
MYEXE=$HOME/code/heckle/bin/heckle.exe
STORE=/store/roch/$RUN

module purge
module load intel/17.1
module load openmpi/intel/2.0.1
module load hdf5/1.8.18

#ln -s /store/roch/sherpa/tst3d/run/0e/restarts.h5 $SCRATCHDIR/restarts.h5
cd $SCRATCHDIR

srun --mpi=pmi2 -K1 --resv-ports -n $SLURM_NTASKS $MYEXE $MYRUN

cp $MYRUN*.txt $STORE
mv $SCRATCHDIR/*.h5 $STORE
