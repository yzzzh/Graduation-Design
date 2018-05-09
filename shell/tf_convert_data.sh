#!/bin/bash
#This is a shell script to convert Pascal VOC datasets(2007 and 2012) into TF-Records only.

#Directory where the original dataset is stored
DATASET_DIR=../build_dataset/CalTechVOC/

#Output directory where to store TFRecords files
OUTPUT_DIR=../build_dataset/tfrecords/

python ../tf_convert_data.py \
    --dataset_name=pascalvoc \
    --dataset_dir=${DATASET_DIR} \
    --output_name=voc_2007_train \
    --output_dir=${OUTPUT_DIR}
