#!/bin/sh

#SBATCH --account=visualai    # Specify VisualAI
#SBATCH --nodes=1             # nodes requested
#SBATCH --ntasks=1            # tasks requested
#SBATCH --cpus-per-task=4     # Specify the number of CPUs your task will need.
#SBATCH --gres=gpu:rtx_3090:1          # the number of GPUs requested
#SBATCH --mem=24G             # memory 
#SBATCH -t 24:00:00           # time requested in hour:minute:second
#SBATCH --mail-type=all       # choice between begin, end, all to notify you via email
#SBATCH --mail-user=xl9353@cs.princeton.edu

source ~/.bashrc
conda activate diffusion-bias
cd /n/fs/xl-diffbia/projects/stylegan2-ada

CUDA_VISIBLE_DEVICES=0 python train.py --outdir=./logs/train --gpus=1 \
--cond=1 --aug=noaug --batch=128 --workers=4 --snap=500 \
--data=/n/fs/xl-diffbia/projects/minimal-diffusion/datasets/cifar10-imagenet/train