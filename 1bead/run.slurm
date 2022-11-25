#!/bin/bash
#SBATCH --job-name=h2o1b         # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem-per-cpu=4G         # memory per cpu-core (4G is default)
#SBATCH --gres=gpu:1             # number of gpus per node
#SBATCH --time=4:00:00          # total run time limit (HH:MM:SS)
##SBATCH --mail-type=begin        # send email when job begins
##SBATCH --mail-type=end          # send email when job ends
##SBATCH --mail-user=yifanl@princeton.edu

module purge
module load anaconda3/2020.11
conda activate /scratch/gpfs/yifanl/usr/licensed/anaconda3/2021.11/dpdev6

mpirun -np 1 lmp -in in.lammps -p 1x1 -log log -screen screen
