#!/bin/bash -l
#SBATCH --job-name=DeMultiplexRawReads           # job name
#SBATCH --mem=9GB            		 # memory
#SBATCH --ntasks=10                  # number of tasks across all nodes
#SBATCH --partition=general          # name of partition to submit job
#SBATCH --time=12:00:00              # Run time (D-HH:MM:SS)
#SBATCH --output=Demux1.out          # Output file. %j is replaced with job ID
#SBATCH --error=Demux1.err         # Error file. %j is replaced with job ID
#SBATCH --mail-type=ALL              # will send email for begin,end,fail
#SBATCH --mail-user=sbw0033@auburn.edu

#Activate the environment
module load python/anaconda/3.8.6
source activate iPyradEnv

#Run the python script 
python Demultiplex3RadReads.py

#To leave the environment
conda deactivate
