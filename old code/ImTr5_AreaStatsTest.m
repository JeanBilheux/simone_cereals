%software neutron image treatment:
%04_Contour Image

clc
clear
close all

%image import
Image=imread('vCrueCropee.tiff');
I=im2double(Image); %conversion to 0->1 values

h_im1=imshow(I);
e1=impoly;
BW1=createMask(e1,h_im1);

STATS1=regionprops(BW1,'All');

pause

h_im2=imshow(I);
e2=impoly;
BW2=createMask(e2,h_im2);

STATS2=regionprops(BW2,'All');