clc;close all;
im = imread('new_20.png');
im = imresize(im, 3);
imshow(im)
if size(im,3)==3
    im = rgb2gray(im);
end
lb= graythresh(im);
im3 = imbinarize(im,lb);
im4 = imcomplement(im3);
figure,imshow(im4),title('original image after preprocessing');
[L, num] = bwlabel(im4);
bboxes = regionprops(im4,'BoundingBox');

figure,imshow(im4),title('image with bounding boxes');
hold on
for k = 1 : length(bboxes)
  thisBB = bboxes(k).BoundingBox;
  rectangle('Position', [thisBB(1),thisBB(2),thisBB(3),thisBB(4)],'EdgeColor','g','LineWidth',2 )
end
ocrResult = ocr(im4);
