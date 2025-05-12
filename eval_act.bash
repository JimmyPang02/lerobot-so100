#!/bin/bash
python lerobot/scripts/eval.py \
    --policy.path=outputs/train/act_aloha_transfer/checkpoints/last/pretrained_model \
    --env.type=aloha \
    --env.task=AlohaTransferCube-v0 \
    --eval.batch_size=10 \
    --eval.n_episodes=10 \
    --policy.use_amp=false \
    --policy.device=cuda

# python lerobot/scripts/eval.py \
#     --policy.path=outputs/train/act_aloha_transfer/checkpoints/080000/pretrained_model \
#     --env.type=aloha \
#     --env.task=AlohaTransferCube-v0 \
#     --eval.batch_size=50 \
#     --eval.n_episodes=500 \
#     --policy.use_amp=false \
#     --policy.device=cuda
