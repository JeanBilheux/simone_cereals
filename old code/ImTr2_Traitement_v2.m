%software neutron image treatment:
% 02_Pretraitements_v2: Constrast, filtering, cropping, contour

clc
clear
close all

%% var import
load('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/Boeuf1/MatLab/1_Boeuf1_rotated.mat');
%%
figure, %figure 1
imshow(I5r);
pause
imshow(I7r);
pause
imshow(I10r);
pause
imshow(I13r);
pause
imshow(I17r);
pause
imshow(I19r);
pause
imshow(I21r);
pause
imshow(I23r);
%% Cropping
%imtool;
%figure, imshow(I1f);
%test
x1=700;
x2=1700;
y1=150;
y2=1820;

%Ic1=imcrop(I1r,[x1 y1 x2 y2]);
%Ic2=imcrop(I2r,[x1 y1 x2 y2]);
%Ic3=imcrop(I3r,[x1 y1 x2 y2]);
%Ic4=imcrop(I4r,[x1 y1 x2 y2]);
Ic5=imcrop(I5r,[x1 y1 x2 y2]);
Ic6=imcrop(I6r,[x1 y1 x2 y2]);
Ic7=imcrop(I7r,[x1 y1 x2 y2]);
Ic8=imcrop(I8r,[x1 y1 x2 y2]);
Ic9=imcrop(I9r,[x1 y1 x2 y2]);
Ic10=imcrop(I10r,[x1 y1 x2 y2]);
Ic11=imcrop(I11r,[x1 y1 x2 y2]);
Ic12=imcrop(I12r,[x1 y1 x2 y2]);
Ic13=imcrop(I13r,[x1 y1 x2 y2]);
Ic14=imcrop(I14r,[x1 y1 x2 y2]);
Ic15=imcrop(I15r,[x1 y1 x2 y2]);
Ic16=imcrop(I16r,[x1 y1 x2 y2]);
Ic17=imcrop(I17r,[x1 y1 x2 y2]);
Ic18=imcrop(I18r,[x1 y1 x2 y2]);
Ic19=imcrop(I19r,[x1 y1 x2 y2]);
Ic20=imcrop(I20r,[x1 y1 x2 y2]);
Ic21=imcrop(I21r,[x1 y1 x2 y2]);
Ic22=imcrop(I22r,[x1 y1 x2 y2]);
Ic23=imcrop(I23r,[x1 y1 x2 y2]);

%%
figure %figure 4
subplot(1,2,1), imshow(Ic5);
subplot(1,2,2), imshow(I5r);
pause
subplot(1,2,1), imshow(Ic7);
subplot(1,2,2), imshow(I7r);
pause
subplot(1,2,1), imshow(Ic11);
subplot(1,2,2), imshow(I11r);
pause
subplot(1,2,1), imshow(Ic13);
subplot(1,2,2), imshow(I13r);
pause
subplot(1,2,1), imshow(Ic15);
subplot(1,2,2), imshow(I15r);
pause
subplot(1,2,1), imshow(Ic17);
subplot(1,2,2), imshow(I17r);
pause
subplot(1,2,1), imshow(Ic20);
subplot(1,2,2), imshow(I20r);
pause
subplot(1,2,1), imshow(Ic23);
subplot(1,2,2), imshow(I23r);
%% Contraste
%test
a=0.05; %low input %0
b=0.45; %high input %0.65
c=0; %low output %1
d=1; %high output %0

%Ia1=imadjust(I1c,[a b],[c d]);
%Ia2=imadjust(I2c,[a b],[c d]);
%Ia3=imadjust(I3c,[a b],[c d]);
%Ia4=imadjust(I4c,[a b],[c d]);
Ia5=imadjust(Ic5,[a b],[c d]);
subplot(1,2,1), imshow(Ia5)
subplot(1,2,2), imshow(Ic5)

Ia6=imadjust(Ic6,[a b],[c d]);
Ia7=imadjust(Ic7,[a b],[c d]);
Ia8=imadjust(Ic8,[a b],[c d]);
Ia9=imadjust(Ic9,[a b],[c d]);
Ia10=imadjust(Ic10,[a b],[c d]);
Ia11=imadjust(Ic11,[a b],[c d]);
Ia12=imadjust(Ic12,[a b],[c d]);
Ia13=imadjust(Ic13,[a b],[c d]);
Ia14=imadjust(Ic14,[a b],[c d]);
Ia15=imadjust(Ic15,[a b],[c d]);
Ia16=imadjust(Ic16,[a b],[c d]);
Ia17=imadjust(Ic17,[a b],[c d]);
Ia18=imadjust(Ic18,[a b],[c d]);
Ia19=imadjust(Ic19,[a b],[c d]);
Ia20=imadjust(Ic20,[a b],[c d]);
Ia21=imadjust(Ic21,[a b],[c d]);
Ia22=imadjust(Ic22,[a b],[c d]);
Ia23=imadjust(Ic23,[a b],[c d]);
%%
figure %figure 2
subplot(1,2,1), imshow(Ic5);
subplot(1,2,2), imshow(Ia5);
pause
subplot(1,2,1), imshow(Ic7);
subplot(1,2,2), imshow(Ia7);
pause
subplot(1,2,1), imshow(Ic11);
subplot(1,2,2), imshow(Ia11);
pause
subplot(1,2,1), imshow(Ic13);
subplot(1,2,2), imshow(Ia13);
pause
subplot(1,2,1), imshow(Ic15);
subplot(1,2,2), imshow(Ia15);
pause
subplot(1,2,1), imshow(Ic17);
subplot(1,2,2), imshow(Ia17);
pause
subplot(1,2,1), imshow(Ic20);
subplot(1,2,2), imshow(Ia20);
pause
subplot(1,2,1), imshow(Ic23);
subplot(1,2,2), imshow(Ia23);
%% Filtre median / enlevement des points blanches
%test
e=5;
f=5;

%If1=medfilt2(I1a,[e f]);
%If2=medfilt2(I1a,[e f]);
%If3=medfilt2(I2a,[e f]);
%If4=medfilt2(I3a,[e f]);
If5=medfilt2(Ia5,[e f]);
figure,
subplot(1,2,1), imshow(Ia5)
subplot(1,2,2), imshow(If5)

If6=medfilt2(Ia6,[e f]);
If7=medfilt2(Ia7,[e f]);
If8=medfilt2(Ia8,[e f]);
If9=medfilt2(Ia9,[e f]);
If10=medfilt2(Ia10,[e f]);
If11=medfilt2(Ia11,[e f]);
If12=medfilt2(Ia12,[e f]);
If13=medfilt2(Ia13,[e f]);
If14=medfilt2(Ia14,[e f]);
If15=medfilt2(Ia15,[e f]);
If16=medfilt2(Ia16,[e f]);
If17=medfilt2(Ia17,[e f]);
If18=medfilt2(Ia18,[e f]);
If19=medfilt2(Ia19,[e f]);
If20=medfilt2(Ia20,[e f]);
If21=medfilt2(Ia21,[e f]);
If22=medfilt2(Ia22,[e f]);
If23=medfilt2(Ia23,[e f]);
%%
figure %figure 3
subplot(1,2,1), imshow(Ia5);
subplot(1,2,2), imshow(If5);
pause
subplot(1,2,1), imshow(Ia7);
subplot(1,2,2), imshow(If7);
pause
subplot(1,2,1), imshow(Ia11);
subplot(1,2,2), imshow(If11);
pause
subplot(1,2,1), imshow(Ia13);
subplot(1,2,2), imshow(If13);
pause
subplot(1,2,1), imshow(Ia15);
subplot(1,2,2), imshow(If15);
pause
subplot(1,2,1), imshow(Ia17);
subplot(1,2,2), imshow(If17);
pause
subplot(1,2,1), imshow(Ia20);
subplot(1,2,2), imshow(If20);
pause
subplot(1,2,1), imshow(Ia23);
subplot(1,2,2), imshow(If23);
%% Saving variables

