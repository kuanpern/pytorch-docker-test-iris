# Test image for pytorch training for GPU

This repo contains a (modified) version of pytorch-iris (A simple implementation of IRIS dataset 
classification with Pytorch), copied from https://github.com/yangzhangalmo/pytorch-iris.


To build, 
```
$ docker build . -t test-iris:latest
```
Public image can also be pulled from `docker pull public.ecr.aws/z3i9n2t5/pytorch-test-iris`.


To test,
```
$ docker run --gpus all test-iris:latest
```

Expected outcomes:
```
```
cuda is available: True
number of epoch 0 loss tensor(1.2010)
number of epoch 100 loss tensor(0.8279)
number of epoch 200 loss tensor(0.7789)
number of epoch 300 loss tensor(0.7662)
number of epoch 400 loss tensor(0.7611)
number of epoch 500 loss tensor(0.7585)
number of epoch 600 loss tensor(0.7569)
number of epoch 700 loss tensor(0.7558)
number of epoch 800 loss tensor(0.7551)
number of epoch 900 loss tensor(0.7546)
prediction accuracy 0.6333333333333333
macro precision 0.48333333333333334
micro precision 0.6333333333333333
macro recall 0.6666666666666666
micro recall 0.6333333333333333
```
