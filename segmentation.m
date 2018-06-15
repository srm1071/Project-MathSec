clc;close all;
im = imread('new_8.png');
im = imresize(im, 3);
imshow(im)
if size(im,3)==3
    im = rgb2gray(im);
end
lb= graythresh(im);
im3 = imbinarize(im,lb);
% % cc = bwconncomp(im3,4);
% % n = cc.NumObjects;
% 
% 
im4 = imcomplement(im3);
% % im5 = imfill(im4,'holes');

figure,imshow(im4),title('original image after preprocessing');

BW1 = imdilate(im4,strel('disk',6));
s = regionprops(BW1,'BoundingBox');
bboxes = vertcat(s(:).BoundingBox);

% Sort boxes by image height
[~,ord] = sort(bboxes(:,2));
bboxes = bboxes(ord,:);

% Pre-process image to make letters thicker
im4 = imdilate(im4,strel('disk',1));

% Call OCR and pass in location of words. Also, set TextLayout to 'word'
results = ocr(im4,bboxes,'CharacterSet','0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+' ,'TextLayout','word');
words = cell(1,numel(results));
for i = 1:numel(results)
    words{i} = deblank(results(i).Text);
end


% % [L, num] = bwlabel(im4);
% % bboxes = regionprops(im4,'BoundingBox');
% % 
% % figure,imshow(im4),title('image with bounding boxes');
% % hold on
% % for k = 1 : length(bboxes)
% %   thisBB = bboxes(k).BoundingBox;
% %   rectangle('Position', [thisBB(1),thisBB(2),thisBB(3),thisBB(4)],'EdgeColor','g','LineWidth',2 )
% % end

% % ocrResult = ocr(im4);
% % words = cell(1,numel(ocrResult));

final = insertObjectAnnotation(im2uint8(im4), 'Rectangle', bboxes,words);
figure,imshow(final);