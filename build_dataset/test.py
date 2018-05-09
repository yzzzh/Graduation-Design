import cv2
from lxml import etree

def visualize_bbox(xml_file, img_file):
    tree = etree.parse(xml_file)
    # load image
    image = cv2.imread(img_file)
    origin =  cv2.imread(img_file)
    # 获取一张图片的所有bbox
    bboxes = tree.xpath('//bndbox')
    for bbox in bboxes:
        coord = []
        #xmin,ymin,xmax,ymax
        for corner in bbox.getchildren():
            coord.append(int(float(corner.text)))
        # print (coord)
        cv2.rectangle(image, (coord[0], coord[1]), (coord[2], coord[3]), (0, 0, 255), 2)
    # visualize image
    cv2.imshow("test", image)
    cv2.imshow('origin',origin)
    cv2.waitKey(0)

if __name__ == '__main__':
    xml_file = "./dataset/xmlresult/set01_V000_100.xml"
    img_file = "./dataset/JPEGImages/set01_V000_100.jpg"
    visualize_bbox(xml_file, img_file)