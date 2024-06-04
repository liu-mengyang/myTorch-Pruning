python prune_timm_models.py 0.5 --name mobilenetv2_100 --exp_name mbv2_0500

torchrun --nproc_per_node=8 --master_port=25678 finetune_timm_models.py \
        --path /lmy/datasets/imagenet \
        --pt_filepath exp/mbv2_0500/pruned_checkpoint.pt \
        --exp_name mbv2_0500small \
        --batch_size 256 \
        --workers 24 \
	-lr 1e-3 \
