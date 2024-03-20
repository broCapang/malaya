WANDB_PROJECT="dpo-mallam-small" \
~/.local/bin/deepspeed dpo.py \
--deepspeed ds_config_zero2.json \
--model_name_or_path=mesolitica/mallam-small-32768-fpf-v2 \
--per_device_train_batch_size 2 \
--gradient_accumulation_steps 1 \
--learning_rate 5e-6 \
--warmup_ratio 0.1 \
--bf16 \
--do_train \
--do_eval false \
--num_train_epochs 10 \
--logging_steps 1 \
--save_steps 50 \
--save_total_limit 3 \
--gradient_checkpointing true \
--output_dir="dpo-mistral" \
--max_length 16384 \
--max_prompt_length 1024 \
--log_level "info" \
--torch_dtype "bfloat16"