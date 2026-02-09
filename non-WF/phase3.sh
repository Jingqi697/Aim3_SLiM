#!/bin/bash
#SBATCH -J slim_TO
#SBATCH --ntasks-per-node=1
#SBATCH -N 1
#SBATCH -t 12:00:00
#SBATCH --mem=24G
#SBATCH -p standard
#SBATCH --account=berglandlab
#SBATCH --output=/scratch/cqh6wn/Aim3_SLiM/nonWF/3Phase/logs/phase2.%A_%a.out
#SBATCH --error=/scratch/cqh6wn/Aim3_SLiM/nonWF/3Phase/logs/phase2.%A_%a.out
#SBATCH --array=1-1000

module purge
module load slim

slim -d jobID=$SLURM_ARRAY_TASK_ID /scratch/cqh6wn/Aim3_SLiM/nonWF/3Phase/phase3_cage.slim
