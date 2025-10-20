gpu_num=${1}
srun --job-name=rlinf --nodes=1 --gpus=${gpu_num} --time=10:00:00 --partition=preempt --account=peilab --pty bash
