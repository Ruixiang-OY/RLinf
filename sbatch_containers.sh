#!/bin/bash
#SBATCH --job-name=train_rlinf      
#SBATCH --nodes=1                 
#SBATCH --gres=gpu:2
#SBATCH --time=24:00:00           
#SBATCH --output=./sbatch_log/job_%j.out    
#SBATCH --error=./sbatch_log/job_%j.err        
#SBATCH --account=peilab
#SBATCH --partition=preempt
#SBATCH --container-image="/project/peilab/ruixiang/RLinf/containers"
#SBATCH --no-container-mount-home
#SBATCH --container-remap-root

source switch_env openpi
cd /project/peilab/ruixiang/RLinf
bash examples/embodiment/run_embodiment.sh libero_10_grpo_openpi