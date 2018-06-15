clc,close all;
global value;

x=10;
y=25;

R1=randseq(3,'alphabet','amino');
im = text2im(R1);
R11 = generate();
im11= text2im(R11);
% imwrite(im11,'im11.png');
% imwrite(im,'im.png');
R2=randseq(3,'alphabet','amino');
im2 = text2im(R2); 
R21 = generate();
im21= text2im(R21);
% imwrite(im21,'im21.png');
% imwrite(im2,'im2.png');
newImage = im;
s = size(im11);
newImage(x:x+s(1)-1, y:y+s(2)-1, :) = im11;
imwrite(newImage,'newimage.png');

imnew1 = im2;
s = size(im21);
imnew1(x:x+s(1)-1, y:y+s(2)-1, :) = im21;
imwrite(imnew1,'imnew1.png');

if rand<.5
    R3 = '+';
else
    R3 = 'x';
end
im1 = text2im(R3);
imwrite(im1,'im1.png');
% k1=rand;
% [im5]=rotation(im,k1);
% k2=rand;
% [im6]=rotation(im2,k2);

subplot(1,3,1), imshow('newImage.png');
subplot(1,3,2), imshow(im1);
subplot(1,3,3), imshow('imnew1.png');
set(gcf,'Visible','off');
saveas(gcf,'orig.png');


A=imread('orig.png');
B=imread('noisy3 (3).png');


d = rgb2gray(imfuse(A,B));

imwrite(d,'merged.png');

%cropping the image
cropping;


c = calculator(R11,R21,R3);
value=int2str(c);

