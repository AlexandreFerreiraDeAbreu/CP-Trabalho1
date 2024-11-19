#!/bin/sh

#BATCH --exclusive   # exclusive node for the job
#SBATCH --time=5:00      # allocation for 2 minutes
 
module load gcc/11.2.0
make

for i in {14..22}
do
export OMP_NUM_THREADS=$i
echo "Thread $i"
time ./fluid_sim
done
