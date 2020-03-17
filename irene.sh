#!/bin/bash
# cccc_msub -m scratch,store,work

RUN=shErpA/lmj/run/00/

MYRUN=$HOME/$RUN
MYEXE=$HOME/code/heckle/bin/heckle.exe
STORE=$CCCSTOREDIR/$RUN

# ------------------------------------------------------------------------------
#MSUB -r lms            # Request name
#MSUB -q knl            # Partition
#MSUB -A gen10417       # Project ID
#MSUB -T 300            # Elapsed time limit in seconds
#MSUB -n 1024           # Total number of tasks to use
#MSUB -o out.%I.log  # Standard output. %I is the job id
#MSUB -e err.%I.log  # Error output. %I is the job id
#MSUB -@ roch.smets@lpp.polytechnique.fr:begin,end
# ------------------------------------------------------------------------------

set -x

cd $CCCSCRATCHDIR

module sw feature/openmpi/net/bxi
module load flavor/hdf5/parallel
module load hdf5

ccc_mprun $MYEXE $MYRUN

mv *.log $MYRUN
mv *.h5 $STORE
