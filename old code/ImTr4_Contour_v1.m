%software neutron image treatment:
% 03_Contour

clc
clear
close all

%% var import
load('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/Boeuf1/2_Boeuf1_filtered.mat');
%%
%imshow(If1); title('')
%imshow(If2); title('')
%imshow(If3); 
%imshow(If4); 
imshow(If5); 
imshow(If6); 
imshow(If7); 
imshow(If8); 
imshow(If9); 
imshow(If10); 
imshow(If11); 
imshow(If12); 
imshow(If13); 
imshow(If14); 
pause
imshow(I15f); 
imshow(I16f); 
imshow(I17f); 
imshow(I18f); 
imshow(I19f); 
imshow(I20f); 
pause
imshow(I21f); 
imshow(I22f); 
imshow(I23f); 

%%
figure, imshow(I21f)
%% Contour
v=[0:0.1:0.85];
figure,
%subplot(1,3,1),
[c5,h5]=imcontour(If5,v);
title('')

%subplot(1,3,2),[c11,h11]=imcontour(If15,v);
%title('')

%subplot(1,3,3),[c45,h45]=imcontour(If23,v);
%title('')

%subplot(3,3,4),[c30,h30]=imcontour(I30f,v);

%subplot(3,3,5),[C40,h40]=imcontour(I40f,v);

%subplot(3,3,6),[C50,h50]=imcontour(I50f,v);

%subplot(3,3,8),[C60,h60]=imcontour(I60f,v);

%%
v=[0:0.1:0.85];

figure, imshow(If5);
xlabel('Pixel (px)','FontSize',20), ylabel('Pixel (px)','FontSize',20)
colormap;
colorbar
%xlabel('Pixel (px)','FontSize',15)
%ylabel('FontSize',15)
set(gcf,'Units','centimeters','Position',[10,10,35,30],'PaperUnits','centimeters','PaperSize',[21, 29.7]);
hold on
[c5,h5]=imcontour(If5,v,'y');
clabel(c5,h5,'FontSize',10,'Color','r')
set(0,'DefaultAxesFontSize',15)

%%
figure, imshow(If23);
xlabel('Pixel (px)','FontSize',20), ylabel('Pixel (px)','FontSize',20)
colormap;
colorbar
%xlabel('Pixel (px)','FontSize',15)
%ylabel('FontSize',15)
set(gcf,'Units','centimeters','Position',[10,10,35,30],'PaperUnits','centimeters','PaperSize',[21, 29.7]);
hold on
[c23,h23]=imcontour(If23,v,'y');
clabel(c23,h23,'FontSize',10,'Color','r')
set(0,'DefaultAxesFontSize',15)

%%
figure,
subplot(1,2,1),imshow(If5);
subplot(1,2,2),[c5,h5]=imcontour(If5,v);
clabel(c5,h5)

%figure,
%subplot(1,2,1),imshow(If10);
%subplot(1,2,2),[c20,h20]=imcontour(If10,v);
%clabel(c10,h10)

%figure,
%subplot(1,2,1),imshow(If15);
%subplot(1,2,2),[c15,h15]=imcontour(If15,v);
%clabel(c15,h15)

%figure,
%subplot(1,2,1),imshow(If17);
%subplot(1,2,2),[c17,h17]=imcontour(If17,v);
%clabel(c17,h17)

figure,
subplot(1,2,1),imshow(If23);
subplot(1,2,2),[c23,h23]=imcontour(If23,v);
clabel(c23,h23)