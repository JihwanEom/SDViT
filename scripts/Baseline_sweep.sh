for command in delete_incomplete launch
    do
    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_ViT_Deit-S/baseline  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0}"""

    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_SDViT_Deit-S/baseline  --command_launcher multi_gpu --algorithms ERM_SDViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0}"""



    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_ViT_Deit-S/EMA  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\"}"""

    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_SDViT_Deit-S/EMA  --command_launcher multi_gpu --algorithms ERM_SDViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\"}"""



    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_ViT_Deit-S/CutMix  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"CutMix\":\"True\"}"""

    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_SDViT_Deit-S/CutMix  --command_launcher multi_gpu --algorithms ERM_SDViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"CutMix\":\"True\"}"""



    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_ViT_Deit-S/EMA_CutMix  --command_launcher multi_gpu --algorithms ERM_ViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\",\"CutMix\":\"True\"}"""

    python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
    --output_dir=./domainbed/PACS/ERM_SDViT_Deit-S/EMA_CutMix  --command_launcher multi_gpu --algorithms ERM_SDViT  \
    --single_test_envs  --datasets PACS  --n_hparams 1 --n_trials 3  \
    --hparams """{\"backbone\":\"DeitSmall\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True\",\"CutMix\":\"True\"}"""

    done
