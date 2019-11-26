#!/bin/bash
env CUDA_VISIBLE_DEVICES=0,1 python3 train.py \
--train_data ./data/training --valid_data ./data/validation \
--Transformation None --FeatureExtraction ResNet --SequenceModeling BiLSTM --Prediction Attn \
--adam --sensitive --num_iter 500000 --valInterval 500 --lr 0.0001 \
--saved_model ./saved_models/None-ResNet-BiLSTM-Attn-Seed1111/best_norm_ED_iter_11501.pth

