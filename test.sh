#!/bin/bash

#SBATCH --job-name=test_cuda
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=12GB
#SBATCH --time=02:00:00
#SBATCH --gres=gpu:3
#SBATCH --partition=k80_8

module purge
module load pytorch/python3.5/0.2.0_3
module load torchvision/python3.5/0.1.9

python3 train_lstm.py
