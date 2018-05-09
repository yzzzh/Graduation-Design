[TOC]

## 安装Anaconda

使用wget下载

> wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-5.0.1-Linux-x86_64.sh

安装

> sudo bash Anaconda3-5.0.1-Linux-x86_64.sh

测试是否安装成功

> conda --version

若安装成功，则提示版本

> conda 4.3.30

更新conda install的源

> \#添加Anaconda镜像
>
> conda config --add channels 'https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/'

> \#设置搜索时显示通道地址
>
> conda config --set show_channel_urls yes

更新一下conda

> conda update conda

------

## 配置GPU环境

创建GPU环境

> conda create -n gpu python=3.6

进入环境

> source activate gpu

安装tensorflow

> conda install tensorflow-gpu

安装opencv

> conda install opencv

安装CUDA8.0

~~~
wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb

sudo dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64.deb

sudo apt-get update

sudo apt-get install cuda
~~~

查看是否安装成功

> nvidia-smi

## 配置CPU环境

创建CPU环境

> conda create -n cpu python=3.6

进入环境

> source activate cpu

安装tensorflow GPU版本

> conda install tensorflow

安装opencv

> conda install opencv

------

##运行

### 下载源代码

> git clone --recursive https://github.com/yzzzh/Graduation-Design.git
>
> cd Graduation-Design

### 下载训练好的模型

地址:https://drive.google.com/uc?id=0B0qPCUZ-3YwWZlJaRTRRQWRFYXM&export=download

将文件复制到 **checkpoints** 中

执行

~~~bash
bash download.sh
~~~

### 执行代码

~~~Python
cd ..
python demo.py
~~~

---

## 制作自己的数据集

### 制作VOC数据集（以CalTechPedestrian为例)

> cd build_dataset

### 安装原始数据集

> bash download.sh

### 制作成VOC数据集

> bash makevoc.sh

### 将VOC转化为tensorflow专用的TFRecords格式

> cd ../shell
>
> bash tf_convert_data.sh

------

## 训练自己的模型

> bash tf_train.sh

训练完毕后，打开 **log_files/log_finetune**

将 **ssd_300_vgg.ckpt **文件复制到 **checkpoints** 下，并删除原来的ckpt文件

### 可视化训练过程

> cd ../log_files
>
> tensorboard --logdir=log_finetune

浏览器打开

> http://localhost:6006

------

## 评估自己的模型

> bash eval_ssd_network.sh
