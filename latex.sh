#!/bin/bash

datasets=(PACS VLCS OfficeHome TerraIncognita)
backbones=(CVTSmall DeitSmall T2T14)
augmentations=(baseline EMA CutMix EMA_CutMix)

for dataset in ${datasets[@]}
    do
    for backbone in ${backbones[@]}
        do
        for augmentation in ${augmentations[@]}
            do
            python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/${backbone}/${augmentation} --T3A --get_recursively True --latex
            done
        done
    done


