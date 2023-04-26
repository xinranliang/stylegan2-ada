
CUDA_VISIBLE_DEVICES=0 python generate.py --outdir=./logs/cifar --num-classes=10 --num-samples=100000 --batch-size=500 \
    --network=https://nvlabs-fi-cdn.nvidia.com/stylegan2-ada-pytorch/pretrained/cifar10.pkl