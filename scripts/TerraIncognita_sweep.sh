for command in delete_incomplete launch
    do
    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/TerraIncognita/ERM_ViT_ours/ERM_ViT_ours_DeiT-small/baseline  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets TerraIncognita  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0}"""

    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/TerraIncognita/ERM_ViT_ours/ERM_ViT_ours_DeiT-small/EMA  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets TerraIncognita  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\"}"""

    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/TerraIncognita/ERM_ViT_ours/ERM_ViT_ours_DeiT-small/CutMix  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets TerraIncognita  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"CutMix\":\"True\"}"""

    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/TerraIncognita/ERM_ViT_ours/ERM_ViT_ours_DeiT-small/EMA_CutMix  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets TerraIncognita  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\",\"CutMix\":\"True\"}"""
    done

# DeitSmall, CVTSmall, T2T14