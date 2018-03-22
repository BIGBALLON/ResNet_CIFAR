#!/bin/bash
STACK_N=(3 5 8 18 25)
LR_SCHEDULER=(1 2 3)
DATASETS=("cifar10" "cifar100")
for lr in ${LR_SCHEDULER[*]}; do
    for d in ${DATASETS[*]}; do
        for n in ${STACK_N[*]}; do
            if [[ $lr -eq 3 ]]; then
                python3 ResNet_keras.py --epochs 300 --stack_n $n --lr_scheduler $lr --dataset $d
            else
                python3 ResNet_keras.py --epochs 200 --stack_n $n --lr_scheduler $lr --dataset $d
            fi
        done
    done
done
#
# ================= The same as the following commonds =================
#
# You can use any cmd to do a separate test !! 
#
# epoch 200 learning rate scheduler 1
# python3 ResNet_keras.py --epochs 200 --stack_n 3 --lr_scheduler 1
# python3 ResNet_keras.py --epochs 200 --stack_n 5 --lr_scheduler 1
# python3 ResNet_keras.py --epochs 200 --stack_n 8 --lr_scheduler 1
# python3 ResNet_keras.py --epochs 200 --stack_n 18 --lr_scheduler 1
# python3 ResNet_keras.py --epochs 200 --stack_n 25 --lr_scheduler 1
# python3 ResNet_keras.py --epochs 200 --stack_n 3  --lr_scheduler 1 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 5  --lr_scheduler 1 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 8  --lr_scheduler 1 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 18 --lr_scheduler 1 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 25 --lr_scheduler 1 --dataset cifar100
#
# epoch 200 learning rate scheduler 2
# python3 ResNet_keras.py --epochs 200 --stack_n 3 --lr_scheduler 2
# python3 ResNet_keras.py --epochs 200 --stack_n 5 --lr_scheduler 2
# python3 ResNet_keras.py --epochs 200 --stack_n 8 --lr_scheduler 2
# python3 ResNet_keras.py --epochs 200 --stack_n 18 --lr_scheduler 2
# python3 ResNet_keras.py --epochs 200 --stack_n 25 --lr_scheduler 2
# python3 ResNet_keras.py --epochs 200 --stack_n 3  --lr_scheduler 2 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 5  --lr_scheduler 2 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 8  --lr_scheduler 2 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 18 --lr_scheduler 2 --dataset cifar100
# python3 ResNet_keras.py --epochs 200 --stack_n 25 --lr_scheduler 2 --dataset cifar100
#
# epoch 300 learning rate scheduler 3
# python3 ResNet_keras.py --epochs 300 --stack_n 3 --lr_scheduler  3
# python3 ResNet_keras.py --epochs 300 --stack_n 5 --lr_scheduler  3
# python3 ResNet_keras.py --epochs 300 --stack_n 8 --lr_scheduler  3
# python3 ResNet_keras.py --epochs 300 --stack_n 18 --lr_scheduler 3
# python3 ResNet_keras.py --epochs 300 --stack_n 25 --lr_scheduler 3
# python3 ResNet_keras.py --epochs 300 --stack_n 3  --lr_scheduler 3 --dataset cifar100
# python3 ResNet_keras.py --epochs 300 --stack_n 5  --lr_scheduler 3 --dataset cifar100
# python3 ResNet_keras.py --epochs 300 --stack_n 8  --lr_scheduler 3 --dataset cifar100
# python3 ResNet_keras.py --epochs 300 --stack_n 18 --lr_scheduler 3 --dataset cifar100
# python3 ResNet_keras.py --epochs 300 --stack_n 25 --lr_scheduler 3 --dataset cifar100
#
# ======================================================================