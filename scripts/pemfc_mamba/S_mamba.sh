export CUDA_VISIBLE_DEVICES=0

# 切换到项目根目录
cd /root/autodl-tmp/S-D-Mamba

model_name=S_Mamba
python -u run.py \
  --is_training 1 \
  --root_path /data/FC1_Ageing/ \
  --data_path FC1_Ageing.csv \
  --model_id PEMFC_96_1 \
  --model $model_name \
  --data custom \
  --features MS \
  --target "Utot (V)" \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 1 \
  --e_layers 2 \
  --enc_in 24 \
  --dec_in 24 \
  --c_out 1 \
  --des 'PEMFC_Multi_to_One' \
  --d_model 512 \
  --d_ff 2048 \
  --d_state 32 \
  --train_epochs 10 \
  --batch_size 32 \
  --learning_rate 0.0001 \
  --checkpoints /data/checkpoints/ \
  --itr 1