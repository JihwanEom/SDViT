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
            python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/${backbone}/${augmentation} --get_recursively True --latex
            done
        done
    done


    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/CVTSmall/baseline --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/CVTSmall/EMA --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/CVTSmall/CutMix --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/CVTSmall/EMA_CutMix --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/DeitSmall/baseline --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/DeitSmall/EMA --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/DeitSmall/CutMix --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/DeitSmall/EMA_CutMix --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/T2T14/baseline --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/T2T14/EMA --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/T2T14/CutMix --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir /mnt/prj/logs/${dataset}/ERM-ViT/T2T14/EMA_CutMix --get_recursively True --latex

    # python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/baseline --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/EMA --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/CutMix --get_recursively True --latex
    # python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/EMA_CutMix --get_recursively True --latex

