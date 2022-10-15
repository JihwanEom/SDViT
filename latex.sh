datasets=(PACS VLCS OfficeHome TerraIncognita)

for dataset in ${datasets[@]}
    do
    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-ViT/baseline --get_recursively True --T3A --latex
    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-ViT/EMA --get_recursively True --T3A --latex
    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-ViT/CutMix --get_recursively True --T3A --latex
    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-ViT/EMA_CutMix --get_recursively True --T3A --latex

    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/baseline --get_recursively True --T3A --latex
    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/EMA --get_recursively True --T3A --latex
    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/CutMix --get_recursively True --T3A --latex
    python -m domainbed.scripts.collect_results --input_dir ./logs/${dataset}/ERM-SDViT/EMA_CutMix --get_recursively True --T3A --latex
    done
