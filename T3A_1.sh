export CUDA_VISIBLE_DEVICES=1

for file in logs/OfficeHome/ERM-SDViT/*/*
do
        if [ -d $file ]
        then
            python -m domainbed.scripts.unsupervised_adaptation \
            --input_dir $file \
            --adapt_algorithm=T3A
        fi
done

