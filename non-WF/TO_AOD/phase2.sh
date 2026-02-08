#!/bin/bash
#SBATCH -J slim_phase2_inversion
#SBATCH --ntasks-per-node=1
#SBATCH -N 1
#SBATCH -t 12:00:00
#SBATCH --mem=24G
#SBATCH -p standard
#SBATCH --account=berglandlab_standard
#SBATCH --output=/scratch/cqh6wn/Aim3_SLiM/nonWF/TO_AOD/2Phase/logs/phase2.%A_%a.out
#SBATCH --error=/scratch/cqh6wn//Aim3_SLiM/nonWF/TO_AOD/2Phase/logs/phase2.%A_%a.err
#SBATCH --array=1-1000

module purge
module load slim

slim -d jobID=$SLURM_ARRAY_TASK_ID phase2_inversion.slim
