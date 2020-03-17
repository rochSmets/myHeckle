
# __ this script has to be run like :
# ./krazucky.sh relative/path/to/run/dir Ncpu
#
MYRUN=$HOME/$1/
MYEXE=$HOME/code/heckle/bin/heckle.exe
#
(time /usr/lib64/openmpi/bin/mpirun -np $2 $MYEXE $MYRUN 2> err-0.log | tee run-0.log &) 2> time-0.log
#
