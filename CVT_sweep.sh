datasets=(PACS VLCS OfficeHome TerraIncognita)
for dataset in ${datasets[@]}
    do
    for command in delete_incomplete launch
        do
        python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
        --output_dir=./domainbed/logs/${dataset}/ERM-ViT/baseline  --command_launcher multi_gpu --algorithms ERM_ViT  \
        --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
        --hparams """{\"backbone\":\"CVTSmall\",\"batch_size\":4,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0}"""

        python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
        --output_dir=./domainbed/logs/${dataset}/ERM-ViT/EMA  --command_launcher multi_gpu --algorithms ERM_ViT  \
        --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
        --hparams """{\"backbone\":\"CVTSmall\",\"batch_size\":4,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\"}"""

        python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
        --output_dir=./domainbed/logs/${dataset}/ERM-ViT/CutMix  --command_launcher multi_gpu --algorithms ERM_ViT  \
        --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
        --hparams """{\"backbone\":\"CVTSmall\",\"batch_size\":4,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"CutMix\":\"True\"}"""

        python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
        --output_dir=./domainbed/logs/${dataset}/ERM-ViT/EMA_CutMix  --command_launcher multi_gpu --algorithms ERM_ViT  \
        --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
        --hparams """{\"backbone\":\"CVTSmall\",\"batch_size\":4,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\",\"CutMix\":\"True\"}"""
        done
    done

# DeitSmall, CVTSmall, T2T14