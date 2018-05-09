#!/usr/bin

unzip VGG_VOC0712_SSD_300x300_iter_120000.ckpt.zip
rm -rf VGG_VOC0712_SSD_300x300_iter_120000.ckpt.zip

mv VGG_VOC0712_SSD_300x300_iter_120000.ckpt.data-00000-of-00001 ssd_300_vgg.ckpt.data-00000-of-00001
mv VGG_VOC0712_SSD_300x300_iter_120000.ckpt.index ssd_300_vgg.ckpt.index