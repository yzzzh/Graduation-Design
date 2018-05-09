#-*- coding:utf-8 -*-
import os.path
import cv2
import glob
import time

def main():
    inputdir = './CalTechData'
    outputdir = './CalTechVOC/JPEGImages'

    if not os.path.exists(outputdir):
        os.makedirs(outputdir)

    start = time.time()
    for set_dir in sorted(glob.glob(os.path.join(inputdir,'set*'))):
        print(set_dir)
        for seq_file in sorted(glob.glob(os.path.join(set_dir,'*.seq'))):
            print(seq_file)
            cap = cv2.VideoCapture(seq_file)
            i = 1
            while True:
                ret,frame = cap.read()
                if not ret:
                    break
                filename = os.path.join(outputdir,'{}_{}_{}.jpg'.format(
                    os.path.basename(set_dir),
                    os.path.splitext(os.path.basename(seq_file))[0],
                    i
                ))
                print('Writing:'+filename)
                cv2.imwrite(filename,frame)
                i += 1
    end = time.time()

    print('Time taken : {} seconds'.format(end - start))

if __name__ == '__main__':
    main()