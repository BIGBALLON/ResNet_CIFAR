import keras
import numpy as np
from keras.datasets import cifar10, cifar100
from keras import backend as K
from keras.models import load_model

# set GPU memory 
if('tensorflow' == K.backend()):
    import tensorflow as tf
    from keras.backend.tensorflow_backend import set_session
    config = tf.ConfigProto()
    config.gpu_options.allow_growth = True
    sess = tf.Session(config=config)

print("\n== LOADING MODEL... ==")

# model = load_model('/home/bg/Desktop/ResNet_CIFAR/decay_test/resnet_50_cifar100_4_2/146_0.6307.h5')
# model = load_model('/home/bg/Desktop/ResNet_CIFAR/decay_test/resnet_50_cifar100_4_2/148_0.6118.h5')
# model = load_model('/home/bg/Desktop/ResNet_CIFAR/decay_test/resnet_50_cifar100_4_2/147_0.6110.h5')
# model = load_model('/home/bg/Desktop/ResNet_CIFAR/decay_test/resnet_50_cifar100_4_2/149_0.6083.h5')
model = load_model('/home/bg/Desktop/ResNet_CIFAR/decay_test/resnet_50_cifar100_4_2/150_0.6098.h5')


print("\n== DONE! ==")

num_classes = 100
mean = [129.3, 124.1, 112.4]
std  = [68.2, 65.4, 70.4]
(x_train, label_train), (x_test, label_test) = cifar100.load_data()

y_train = keras.utils.to_categorical(label_train, num_classes)
y_test = keras.utils.to_categorical(label_test, num_classes)

print("\n== DONE! ==\n\n== COLOR PREPROCESSING... ==")

# color preprocessing
x_train = x_train.astype('float32')
x_test = x_test.astype('float32')
for i in range(3):
    x_train[:,:,:,i] = (x_train[:,:,:,i] - mean[i]) / std[i]
    x_test[:,:,:,i] = (x_test[:,:,:,i] - mean[i]) / std[i]



pred = model.predict(x_train, batch_size=128, verbose=0, steps=None)
result = np.argmax(pred,axis=1)
print(pred.shape)
print(result.shape)
print(label_train.shape)

import matplotlib.pyplot as plt
x = result.flatten().tolist()
y = label_train.flatten().tolist()

number = [i for i in range(100)]
count = [0]*100
for i in y:
    count[i] += 1
plt.bar(number,count)
# plt.savefig('lable.png')

count = [0]*100
for i in x:
    count[i] += 1
plt.bar(number,count)
plt.savefig('pred_150.png')


