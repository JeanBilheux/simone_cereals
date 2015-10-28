%software neutron image treatment:
% 03_Contouring_v2: Surface

clc
clear
close all
%% Importing
load('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/Boeuf1/MatLab/2_Boeuf1_filtred.mat')

%% Contour B&W: (1) detections contour
BW_I5 = edge(If5,'sobel',0.005);
BW_I15 = edge(If15,'sobel',0.005);
BW_I23 = edge(If23,'sobel',0.005);
%BW_I4 = edge(I4c,'canny',0.08,3);
%BW_I5 = edge(I5c,'canny',0.08,3);
%BW_I6 = edge(I6c,'canny',0.08,3);

figure,
imshow(BW_I5), title('binary gradient mask sobel I1');
pause
imshow(BW_I15), title('binary gradient mask sobel I2');
pause
imshow(BW_I23), title('binary gradient mask sobel I3');
%pause
%imshow(BW_I4), title('binary gradient mask sobel I4');
%pause
%imshow(BW_I5), title('binary gradient mask sobel I5');
%pause
%imshow(BW_I6), title('binary gradient mask sobel I6');

%% Contour B&W: (2) Dilate the Image LINE (mettre ? contact le points du bord)
%strel: element morphologique -> ligne ? 0 deg et 90 deg
dilate2=2; %lenght
dilate5=5;
deg1=0; %angle
deg2=90;
se1 = strel('line',dilate2,deg1);
se2 = strel('line',dilate2,deg2);
se3 = strel('line',dilate5,deg1);
se4 = strel('line',dilate5,deg2);

BWdil_I1 = imdilate(BW_I5, [se1 se2]);
BWdil_I2 = imdilate(BW_I15, [se1 se2]);
BWdil_I3 = imdilate(BW_I23, [se1 se2]);
%BWdil_I4 = imdilate(BW_I4, [se3 se4]);
%BWdil_I5 = imdilate(BW_I5, [se3 se4]);
%BWdil_I6 = imdilate(BW_I6, [se3 se4]);

figure,
imshow(BWdil_I1), title('dilated gradient mask I1');
pause
imshow(BWdil_I2), title('dilated gradient mask I2');
pause
imshow(BWdil_I3), title('dilated gradient mask I3');
%pause
%imshow(BWdil_I4), title('dilated gradient mask I4');
%pause
%imshow(BWdil_I5), title('dilated gradient mask I5');
%pause
%imshow(BWdil_I6), title('dilated gradient mask I6');

%% Contour B&W: (3) Filling closed spaces (touts les ?spaces ferm?es sont rempli?s)
%%%Fill Interior Gaps
BWfill_I1 = imfill(BWdil_I1, 'holes');
BWfill_I2 = imfill(BWdil_I2, 'holes');
BWfill_I3 = imfill(BWdil_I3, 'holes');
%BWfill_I4 = imfill(BWdil_I4, 'holes');
%BWfill_I5 = imfill(BWdil_I5, 'holes');
%BWfill_I6 = imfill(BWdil_I6, 'holes');

figure,
imshow(BWfill_I1), title('binary image with filled holes I1');
pause
imshow(BWfill_I2), title('binary image with filled holes I2');
pause
imshow(BWfill_I3), title('binary image with filled holes I3');
%pause
%imshow(BWfill_I4), title('binary image with filled holes I4');
%pause
%imshow(BWfill_I5), title('binary image with filled holes I5');
%pause
%imshow(BWfill_I6), title('binary image with filled holes I6');

%% Contour B&W: (4) Clear Border
BWnobord_I1 = imclearborder(BWfill_I1,8);
BWnobord_I2 = imclearborder(BWfill_I2,8);
BWnobord_I3 = imclearborder(BWfill_I3,8);
%BWnobord_I4 = imclearborder(BWfill_I4,8);
%BWnobord_I5 = imclearborder(BWfill_I5,8);
%BWnobord_I6 = imclearborder(BWfill_I6,8);

figure,
imshow(BWnobord_I1), title('cleared border image I1');
pause
imshow(BWnobord_I2), title('cleared border image I2');
pause
imshow(BWnobord_I3), title('cleared border image I3');
%pause
%imshow(BWnobord_I4), title('cleared border image I4');
%pause
%imshow(BWnobord_I5), title('cleared border image I5');
%pause
%imshow(BWnobord_I6), title('cleared border image I6');

%% Contour B&W: (5) Smoothen the Object (Lissage image)
seD = strel('diamond',4);
BWfinal_I1 = imerode(BWnobord_I1,seD);
BWfinal_I2 = imerode(BWnobord_I2,seD);
BWfinal_I3 = imerode(BWnobord_I3,seD);
%BWfinal_I4 = imerode(BWnobord_I4,seD);
%BWfinal_I5 = imerode(BWnobord_I5,seD);
%BWfinal_I6 = imerode(BWnobord_I6,seD);

figure, imshow(BWfinal_I1), title('segmented image I1');
pause
figure, imshow(BWfinal_I2), title('segmented image I2');
pause
figure, imshow(BWfinal_I3), title('segmented image I3');
%pause
%figure, imshow(BWfinal_I4), title('segmented image I4');
%pause
%figure, imshow(BWfinal_I5), title('segmented image I5');
%pause
%figure, imshow(BWfinal_I6), title('segmented image I6');
%% Contour B&W: (6) Remove object than 11.000 pixels (filtrage - objets connect?s)
thresh1=11000;
BWnoObj_I1= bwareaopen(BWfinal_I1,thresh1);
BWnoObj_I2= bwareaopen(BWfinal_I2,thresh1);
BWnoObj_I3= bwareaopen(BWfinal_I3,thresh1);
%BWnoObj_I4= bwareaopen(BWfinal_I4,thresh1);
%BWnoObj_I5= bwareaopen(BWfinal_I5,thresh1);
%BWnoObj_I6= bwareaopen(BWfinal_I6,thresh1);

figure, imshow(BWnoObj_I1), title('Remove object than 11.000 pixels');
axis image
pause
figure, imshow(BWnoObj_I2), title('Remove object than 11.000 pixels');
axis image
pause
figure, imshow(BWnoObj_I3), title('Remove object than 11.000 pixels');
axis image
%pause
%figure, imshow(BWnoObj_I4), title('Remove object than 11.000 pixels');
%axis image
%pause
%figure, imshow(BWnoObj_I5), title('Remove object than 11.000 pixels');
%axis image
%pause
%figure, imshow(BWnoObj_I6), title('Remove object than 11.000 pixels');
%axis image
%% Contour B&W: (7.1) Masque
Masque_I1=logical(BWnoObj_I1);
Masque_I2=logical(BWnoObj_I2);
Masque_I3=logical(BWnoObj_I3);
%Masque_I4=logical(BWnoObj_I4);
%Masque_I5=logical(BWnoObj_I5);
%Masque_I6=logical(BWnoObj_I6);

IMasque_I1=Masque_I1.*I1c;
IMasque_I2=Masque_I2.*I2c;
IMasque_I3=Masque_I3.*I3c;
%IMasque_I4=Masque_I4.*I4c;
%IMasque_I5=Masque_I5.*I5c;
%IMasque_I6=Masque_I6.*I6c;

figure,
subplot(1,3,1), imshow(IMasque_I1)
subplot(1,3,2), imshow(IMasque_I2)
subplot(1,3,3), imshow(IMasque_I3)
%figure,
%subplot(1,3,1), imshow(IMasque_I4)
%subplot(1,3,2), imshow(IMasque_I5)
%subplot(1,3,3), imshow(IMasque_I6)

v=[0:0.1:0.9];

figure, [C,handle]=imcontour(IMasque_I1,v);, axis image;
%figure, imcontour(IMasque_I2,v), axis image;
%figure, imcontour(IMasque_I3,v), axis image;
%figure, imcontour(IMasque_I4,v), axis image;
%figure, imcontour(IMasque_I5,v), axis image;
%figure, imcontour(IMasque_I6,v), axis image;

%% Contour B&W: (7.2) Perim?tre
BWoutline_I1 = bwperim(BWnoObj_I1,8);
BWoutline_I2 = bwperim(BWnoObj_I2,8);
BWoutline_I3 = bwperim(BWnoObj_I3,8);
%BWoutline_I4 = bwperim(BWnoObj_I4,8);
%BWoutline_I5 = bwperim(BWnoObj_I5,8);
%BWoutline_I6 = bwperim(BWnoObj_I6,8);

figure,
imshow(BWoutline_I1), title('Perimetre image_I1');
pause
imshow(BWoutline_I2), title('Perimetre image_I2');
pause
imshow(BWoutline_I3), title('Perimetre image_I3');
%pause
%imshow(BWoutline_I4), title('Perimetre image_I4');
%pause
%imshow(BWoutline_I5), title('Perimetre image_I5');
%pause
%imshow(BWoutline_I6), title('Perimetre image_I6');
%% Contour B&W: (7.3) image-edge Superposition
SuperPos_I1= I1c;
SuperPos_I1(BWoutline_I1)=0;

SuperPos_I2= I2c;
SuperPos_I2(BWoutline_I2)=0;

SuperPos_I3= I3c;
SuperPos_I3(BWoutline_I3)=0;

%SuperPos_I4= I4c;
%SuperPos_I4(BWoutline_I4)=0;

%SuperPos_I5= I5c;
%SuperPos_I5(BWoutline_I5)=0;

%SuperPos_I6= I6c;
%SuperPos_I6(BWoutline_I6)=0;

figure,
imshow(SuperPos_I1), title('outlined original image_I1');
pause
imshow(SuperPos_I2), title('outlined original image_I2');
pause
imshow(SuperPos_I3), title('outlined original image_I3');
%pause
%imshow(SuperPos_I4), title('outlined original image_I4');
%pause
%imshow(SuperPos_I5), title('outlined original image_I5');
%pause
%imshow(SuperPos_I6), title('outlined original image_I6');

%% Surface (8)
Surf_I1 = bwarea(BWnoObj_I1);
Surf_I2 = bwarea(BWnoObj_I2);
Surf_I3 = bwarea(BWnoObj_I3);
%Surf_I4 = bwarea(BWnoObj_I4);
%Surf_I5 = bwarea(BWnoObj_I5);
%Surf_I6 = bwarea(BWnoObj_I6);
