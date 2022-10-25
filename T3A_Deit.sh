model=DeitSmall
datasets=(PACS VLCS OfficeHome TerraIncognita)
algorithms=(ERM-ViT ERM-SDViT)
for dataset in ${datasets[@]}
    do
    for algorithm in ${algorithms[@]}
        do
            for file in ../logs/${dataset}/${algorithm}/${model}/*/*
                do
                    echo ${file}
                    if [ -d $file ]
                    then
                        python -m domainbed.scripts.unsupervised_adaptation \
                        --input_dir $file \
                        --adapt_algorithm=T3A
                    fi
                done
        done
    done
