#!/bin/bash
python lerobot/scripts/eval.py \
    --policy.path=outputs/train/pusht/checkpoints/last/pretrained_model \
    --env.type=pusht \
    --eval.batch_size=10 \
    --eval.n_episodes=10 \
    --policy.use_amp=false \
    --policy.device=cuda

# python lerobot/scripts/eval.py \
#     --policy.path=outputs/train/pusht/checkpoints/last/pretrained_model \
#     --output_dir=outputs/eval/pusht/last \
#     --env.type=pusht \
#     --eval.n_episodes=500 \
#     --eval.batch_size=50 \
#     --policy.device=cuda \
#     --policy.use_amp=false
