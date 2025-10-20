#!/bin/bash
#SBATCH --job-name=train_flow_grpo      # 作业名称
#SBATCH --nodes=1                 # 使用一个节点
#SBATCH --ntasks=1                # 一个任务
#SBATCH --cpus-per-task=8         # 每个任务使用8个CPU核
#SBATCH --time=5:00:00           # 作业最大运行2小时
#SBATCH --output=./sbatch_log/job_%j.out       # 标准输出文件名
#SBATCH --error=./sbatch_log/job_%j.err        # 标准错误输出文件名
#SBATCH --gres=gpu:4
#SBATCH --account=peilab
#SBATCH --partition=preempt

source activate rlinf
source .venv/bin/activate
ray start --head --ray-debugger-external --port 7800 --dashboard-port 123
echo Building up ray!
bash examples/embodiment/run_embodiment.sh libero_10_grpo_openpi
ray stop --force