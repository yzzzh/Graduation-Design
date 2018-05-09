#!/usr/bin

if [! -d CalTechVOC];then
    mkdir CalTechVOC
fi

cd CalTechVOC
mkdir JPEGImages
mkdir -p ImageSets/Main
mkdir Annotations
cd ..

mkdir tfrecords

python vbb2voc.py

python seq2jpg.py

python generateTXT.py
