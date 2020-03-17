
# ----------------------------------------
# @ job_name         = 01w
# @ job_type         = parallel
# @ total_tasks      = 128
# @ wall_clock_limit = 02:00:00
# @ as_limit         = 3.5Gb
# @ output           = ada.$(jobid).log
# @ error            = ada.$(jobid).err
# @ notify_user      = roch.smets@lpp.polytechnique.fr
# @ notification     = always
# @ queue
# ----------------------------------------

RUN=sherpa/2hotspots/run/01w/

module load hdf5/mpi/1.8.9

MYRUN=$HOME/$RUN
MYEXE=$HOME/code/heckle/bin/heckle.exe
STORE=$WORKDIR/$RUN

set -x

cd $TMPDIR

time poe $MYEXE $MYRUN

mv *.h5 $STORE

