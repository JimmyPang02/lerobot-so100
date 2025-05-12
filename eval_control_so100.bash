#!/bin/bash
python lerobot/scripts/control_robot.py \
  --robot.type=so100 \
  --control.type=record \
  --control.fps=30 \
  --control.single_task="Grasp a pen and put it in the box." \
  --control.repo_id=JimmyPeng02/eval_pi0_so100_test_060000 \
  --control.tags='["tutorial"]' \
  --control.warmup_time_s=5 \
  --control.episode_time_s=30 \
  --control.reset_time_s=10 \
  --control.num_episodes=10 \
  --control.push_to_hub=true \
  --control.policy.path=outputs/act_so100/checkpoints/020000/pretrained_model
  # --control.policy.path=outputs/dp_so100/checkpoints/last/pretrained_model # 几乎不动 偶尔突然抬抬头
  # --control.policy.path=outputs/act_so100/checkpoints/last/pretrained_model # 能动，有个基本的抓取趋势，但是抓不起来

