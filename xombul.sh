
# __ this script has to be run like :
# ./xombul.sh /path/to/run/dir Ncpu
#
MYRUN=$1/
MYEXE=$HOME/codeS/hecKle/build-heckle/HECKLE
#
(time mpirun -np $2 $MYEXE $MYRUN 2> err-0.log | tee run-0.log &) 2> time-0.log
#
