WANDB_PROJECT=fpf-mistral-7b-hf-instructions-32k-function-call-v2 ~/.local/bin/deepspeed run_clm_instructions.py \
--deepspeed ds_config_zero3.json \
--model_name_or_path last-checkpoint \
--per_device_train_batch_size 6 \
--gradient_accumulation_steps 3 \
--output_dir fpf-7b-instructions-16k-call-v2 \
--bf16 \
--do_train \
--do_eval false \
--num_train_epochs 1 \
--train_file "shuf-combine-alternate-no-alignment-malay-multitasks-heavy.jsonl" \
--logging_steps 1 \
--learning_rate 2e-5 \
--block_size 16384 \
--save_steps 100 \
--save_total_limit 2 \
--gradient_checkpointing true \
--neftune_noise_alpha 5.0