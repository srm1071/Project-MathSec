I=imread('merged.png');
I2=imcrop(I,[70 200 780 260]);
imwrite(I2,'new.png');