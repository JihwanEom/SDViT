export CUDA_VISIBLE_DEVICES=0

for file in logs/OfficeHome/ERM-ViT/*/*
do
        if [ -d $file ]
        then
            python -m domainbed.scripts.unsupervised_adaptation \
            --input_dir $file \
            --adapt_algorithm=T3A
        fi
done

