# conda init
# conda activate rlinf
source .venv/bin/activate
export RAY_TMPDIR=/project/peilab/ruixiang/ray_tmp
ray start --head --ray-debugger-external --dashboard-port 1234 --port 7800 --temp-dir $RAY_TMPDIR