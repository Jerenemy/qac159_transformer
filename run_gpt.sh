#!/usr/bin/bash
#SBATCH --job-name='runGPT'
#SBATCH --output=/zfshomes/hpc180/proj/runGPT.out
#SBATCH --error=/zfshomes/hpc180/proj/runGPT.err
#SBATCH -N 2
#SBATCH --partition=exx96
#SBATCH -B 1:1:1
#SBATCH --cpus-per-gpu=2
#SBATCH --mem-per-gpu=7168
#SBATCH --gres=gpu:geforce_rtx_2080_s:2

source /share/apps/CENTOS8/ohpc/software/miniconda3/py39/bin/activate
export CUDA_HOME=/usr/local/cuda
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib:$LD_LIBRARY_PATH
export PATH=/share/apps/CENTOS7/intel/oneapi/pytorch/latest/bin$path

python /zfshomes/hpc180/proj/gpt.py
