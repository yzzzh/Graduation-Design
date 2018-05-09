#!/usr/bin

#安装训练好的模型
tar xvf checkpoints.tar.gz

mv checkpoints/ssd_300_vgg.ckpt.data-00000-of-00001 ssd_300_vgg.ckpt.data-00000-of-00001
mv checkpoints/ssd_300_vgg.ckpt.index ssd_300_vgg.ckpt.index

rm -rf checkpoints
rm -rf checkpoints.tar.gz