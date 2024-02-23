#!/bin/bash

export WANDB_PROJECT=llama2gov_pt_ds_v02_bl1664_20231027

accelerate launch --config_file pretrain/accelerate_config.yaml \
	pretrain/train.py \
	--report_to="wandb" \
	--do_train=True \
	--do_eval=True \
	--no_cuda=False \
	--cache_dir="/opt/data_share/hfcache" \
	--model_name_or_path="/opt/data_share/model/llama2_7B_sharded_3GB" \
	--output_dir="/opt/data_share/model/llama2gov_pt_ds_v02_bl1664_20231027/" \
	--train_file="/opt/data_share/treinamento_v02_pt_2.4mi_docs_cgu_serpro_carolina_train.json" \
	--validation_file="/opt/data_share/treinamento_v02_pt_2.4mi_docs_cgu_serpro_carolina_validation.json" \
	--streaming=True \
	--keep_linebreaks=True \
	--block_size=1664 \
	--num_train_epochs=1 \
	--per_device_train_batch_size=1 \
	--per_device_eval_batch_size=1 \
	--gradient_accumulation_steps=64 \
	--eval_steps=500 \
	--evaluation_strategy="steps" \
	--save_strategy="steps" \
	--save_steps=500 \
        --load_best_model_at_end=False \
	--save_total_limit=100 \
	--learning_rate=3e-5 \
	--weight_decay=0.1 \
	--warmup_ratio=0 \
	--lr_scheduler_type="cosine" \
	--logging_steps=10 \
	--torch_dtype=bfloat16 \
	--preprocessing_num_workers=6 \
	--low_cpu_mem_usage=True \
	--optim=paged_adamw_8bit \
	--use_fast_tokenizer=True
