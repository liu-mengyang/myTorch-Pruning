python prune_timm_vit.py \
    --model_name vit_base_patch16_224 \
    --pruning_type taylor \
    --pruning_ratio 0.5 \
    --taylor_batchs 10 \
    --dataset_root ~/Datasets/shared/imagenet \
    --test_accuracy \
    --train_batch_size 64 \
    --val_batch_size 64 \
    --save_as output/pruned/vit_base_patch16_224_pruned.pth \