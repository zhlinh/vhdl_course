%Matlab Code
%图像转TXT文件
clear all
clc
data=imread('Wild-Poppies.jpg');
dlmwrite('INTEXT_R.txt',data(:,:,1), '\t');
dlmwrite('INTEXT_G.txt',data(:,:,2), '\t');
dlmwrite('INTEXT_B.txt',data(:,:,3), '\t');
%TXT文件转图像
clear all
clc
img(:,:,1)=dlmread('OUTTEXT_R.txt','\t',[0 0 255 255]);
img(:,:,2)=dlmread('OUTTEXT_G.txt','\t',[0 0 255 255]);
img(:,:,3)=dlmread('OUTTEXT_B.txt','\t',[0 0 255 255]);
img=uint8(img);
imwrite(img,'test.jpg');