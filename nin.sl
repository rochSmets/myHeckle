
#!/bin/sh

MYRUN=$HOME/sherpa/munster/run/02a
MYEXE=$HOME/code/heckle/bin/heckle.exe

srun --resv-ports ./heckle.exe ./
# sbatch -n8 -D /home/roch/sherpa/munster/run/03a/ -J m03a /home/roch/sherpa/munster/run/nin.sl
