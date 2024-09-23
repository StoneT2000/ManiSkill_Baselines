seeds=(9351 4796 1788)
for seed in ${seeds[@]}
do
python ppo_rgb.py --env-id="PickCube-v1" --num-envs=16 --image-size 128\
  --seed ${seed} --control-mode pd_joint_delta_pos --exp-name ppo-PickCube-v1-rgb-cpu-${seed} \
  --track --wandb-entity stonet2000 \
done