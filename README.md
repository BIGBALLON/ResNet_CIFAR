# Residual Network Experiments with CIFAR Datasets.


## Update(2018/06/15)

We used a new learning rate scheduler called HTD.  
You can see the toy demo code [here](https://github.com/BIGBALLON/cifar-10-cnn/tree/master/htd) or our papar in [arXiv](https://arxiv.org/abs/1806.01593).

## Original Repository

This repository is about some experiments of learning rate with CIFAR-10 & CIFAR-100.  

The original paper start with a learning rate of **0.1**, divide it by **10** at 32k(**81 epoch**) and 48k(**122 epoch**) iterations, and
terminate training at 64k iterations(**200 epochs** total).  

I ran other experiments based on the same architecture. The only difference is learning rate schedule.  
All of the **tensorboard logs** & **pretrained models** are available at [BIGBALLON/pretrained_models](https://github.com/BIGBALLON/pretrained_models)

## How to run

You can run the script ``run.sh`` to start all the experiments.  
Or just run the command like:

```
python3 ResNet_keras.py --epochs 200 --stack_n 3  --lr_scheduler 1 --dataset cifar100
```
 
## Accuracy of Experiments


![](https://user-images.githubusercontent.com/7837172/37843127-055cb1e8-2eff-11e8-8bf9-cad2c1f58730.png)


Please feel free to contact me if you have any questions!  :smile_cat: 
