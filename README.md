
# MyHeckle

*env var & characteristics for each machine :*

## xombul
HECKLE_LDFLAG="-lhdf5"
HECKLE_IFLAG="-I/usr/include -I/usr/local/include"
HECKLE_CC="/usr/bin/mpicc"
RAM : 8 Gb
cores : 8

## krazucky
HECKLE_CC="/usr/lib64/openmpi/bin/mpicc"
HECKLE_IFLAG="-I/usr/include/openmpi-x86_64/"
HECKLE_LDFLAG="-L/usr/lib64/ -lhdf5"

## ada
module load hdf5/mpi/1.8.9
HECKLE_LDFLAG=$WRAPPER_LDFLAGS
HECKLE_IFLAG=$WRAPPER_FFLAGS
HECKLE_CC="/smplocal/pub/Modules/IDRIS/wrappers/mpiicc"
RAM : 3.5 Gb per core (max)
cores : multiple of 32
see :  www.idris.fr/ada/ada-news-class.html

## hopper
module load mvapich2/gcc/64/2.1rc1 cmake/3.5.0 hdf5-mvapich/1.10.5
export HECKLE_CC=$MPI_HOME"/bin/mpicc"
export HECKLE_IFLAG="-I"$HDF5INCLUDE
export HECKLE_LDFLAG="-L "$HDF5LIB" -lhdf5"
RAM : 64 Gb
cores : 32
max of 4 nodes=128 cores per run
class small  ( 32 cores, 30 days)
class medium ( 96 cores, 10 days)
class large  (128 cores,  2 days)

## zoidberg
HECKLE_LDFLAG="-L$MPI_LIB -L$HDF5LIB -lhdf5"
HECKLE_IFLAG="-I$MPI_INCLUDE -I$HDF5INCLUDE"
HECKLE_CC="$MPI_BIN/mpicc"
RAM : 256 Gb
cores : 64
walltime : 72h

## nin
HECKLE_LDFLAG=
HECKLE_IFLAG=
HECKLE_CC=
RAM :  Gb
cores :

## occigen
module load intel/17.1
module load openmpi/intel/2.0.1
module load hdf5/1.8.18
HECKLE_LDFLAG="-L$MPIROOT/lib -L$HDF5_DIR/lib -lhdf5"
HECKLE_IFLAG="-I$MPIROOT/include -I$HDF5_DIR/include"
HECKLE_CC="mpicc"
RAM : 2.6 Gb per core
cores : biproc of 12 cores

## irene knl
module sw feature/openmpi/net/bxi
module load flavor/hdf5/parallel
module load hdf5
HECKLE_LDFLAG="$HDF5_LDFLAGS"
HECKLE_IFLAG="$HDF5_CFLAGS"
HECKLE_CC="$CCC_MPICC"



**TODO :**

> sti : HybParam
> st1 : Grid1
> st2 : Grid2
> stp : Particle
> std : TimeDiag
> stx : CommParam


