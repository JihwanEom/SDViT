backbone=(DeitSmall)
datasets=(PACS VLCS OfficeHome TerraIncognita)

for dataset in ${datasets[@]}
    do
        for lambda1 in 0.5 0.2 0.1
            do
                for lambda2 in 3.0 5.0
                    do
                        for command in delete_incomplete launch
                            do
                            python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
                            --output_dir=/mnt/prj/logs/${dataset}/ERM-SDViT-Grid/${backbone}/baseline_RB_${lambda1}_KL_${lambda2} --command_launcher multi_gpu --algorithms ERM_SDViT  \
                            --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
                            --hparams """{\"backbone\":\"${backbone}\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"RB_loss_weight\":$lambda1,\"KL_Div_Temperature\":$lambda2}"""

                            python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
                            --output_dir=/mnt/prj/logs/${dataset}/ERM-SDViT-Grid/${backbone}/EMA_RB_${lambda1}_KL_${lambda2} --command_launcher multi_gpu --algorithms ERM_SDViT  \
                            --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
                            --hparams """{\"backbone\":\"${backbone}\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True","RB_loss_weight\":$lambda1,\"KL_Div_Temperature\":$lambda2}"""

                            python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
                            --output_dir=/mnt/prj/logs/${dataset}/ERM-SDViT-Grid/${backbone}/CutMix_RB_${lambda1}_KL_${lambda2} --command_launcher multi_gpu --algorithms ERM_SDViT  \
                            --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
                            --hparams """{\"backbone\":\"${backbone}\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"CutMix\":\"True","RB_loss_weight\":$lambda1,\"KL_Div_Temperature\":$lambda2}"""

                            python -m domainbed.scripts.sweep ${command} --data_dir=./domainbed/data/ \
                            --output_dir=/mnt/prj/logs/${dataset}/ERM-SDViT-Grid/${backbone}/EMA_CutMix_RB_${lambda1}_KL_${lambda2} --command_launcher multi_gpu --algorithms ERM_SDViT  \
                            --single_test_envs  --datasets ${dataset}  --n_hparams 1 --n_trials 3  \
                            --hparams """{\"backbone\":\"${backbone}\",\"batch_size\":32,\"lr\":5e-05,\"resnet_dropout\":0.0,\"weight_decay\":0.0,\"EMA\":\"True","CutMix\":\"True","RB_loss_weight\":$lambda1,\"KL_Div_Temperature\":$lambda2}"""
                            done
                    done
            done
done
