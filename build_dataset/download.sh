#!/usr/bin

if [! -d data]; then
    mkdir CalTechData
fi

cd CalTechData

wget http://www.vision.caltech.edu.s3-us-west-2.amazonaws.com/Image_Datasets/CaltechPedestrians/datasets/USA/annotations.zip
wget http://www.vision.caltech.edu.s3-us-west-2.amazonaws.com/Image_Datasets/CaltechPedestrians/datasets/USA/set00.tar

unzip annotations.zip
rm -rf annotaions.zip

tar xvf set00.tar
rm -rf set00.tar

cd annotaions
rm -rf set01
rm -rf set02
rm -rf set03
rm -rf set04
rm -rf set05
rm -rf set06
rm -rf set07
rm -rf set08
rm -rf set09
rm -rf set10

cd ../..