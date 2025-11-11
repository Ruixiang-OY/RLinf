# NGC container path
NGC_IMAGE="/project/peilab/ruixiang/RLinf/containers"
LOCAL_IMAGE="/project/peilab/ruixiang/RLinf/containers"

# load slurm module
module avail
module load slurm 

# submit a gpu job [annotated]
srun --account peilab `# use your project account name` \
--partition preempt --nodes 1 --gpus 2 `# request 1 gpu in debug partition` \
--container-image $NGC_IMAGE `# load container from NGC_IMAGE` \
--no-container-mount-home  `# do not mount /home/$USER` \
--container-remap-root  `# give you root privilege` \
--container-writable  `# allow you to make change` \
--container-save $LOCAL_IMAGE `# save the container to LOCAL_IMAGE when exit` \
--pty bash