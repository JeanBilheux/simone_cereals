%software neutron image treatment:
% 01_Normalisation_v2

clc
clear
close all

%% image import
FV1=fitsread('FV__00001.fits'); %('Name_File.fmt')
FV2=fitsread('FV__00002.fits');
FV3=fitsread('FV__00003.fits');
FV4=fitsread('FV__00004.fits');
FV5=fitsread('FV__00005.fits');
FV6=fitsread('FV__00006.fits');
FV7=fitsread('FV__00007.fits');
FV8=fitsread('FV__00008.fits');
FV9=fitsread('FV__00009.fits');
FV10=fitsread('FV__00010.fits');

DC1=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00001.fits');
DC2=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00002.fits');
DC3=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00003.fits');
DC4=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00004.fits');
DC5=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00005.fits');
DC6=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00006.fits');
DC7=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00007.fits');
DC8=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00008.fits');
DC9=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00009.fits');
DC10=fitsread('/Volumes/Mac Archivio/Doc/These/Simao/Data/i2D_Images/201510 Oct/bdf_Debut/bdf_00010.fits');

FVm=(FV1+FV2+FV3+FV4+FV5+FV6+FV7+FV8+FV9+FV10)/10;
DCm=(DC1+DC2+DC3+DC4+DC5+DC6+DC7+DC8+DC9+DC10)/10;
%%
%I1=fitsread('Boeuf1__00001.fits');
%I2=fitsread('Boeuf1__00002.fits');
%I3=fitsread('Boeuf1__00003.fits');
%I4=fitsread('Boeuf1__00004.fits');
I5=fitsread('Boeuf1__00005.fits');
I6=fitsread('Boeuf1__00006.fits');
I7=fitsread('Boeuf1__00007.fits');
I8=fitsread('Boeuf1__00008.fits');
I9=fitsread('Boeuf1__00009.fits');
I10=fitsread('Boeuf1__00010.fits');
I11=fitsread('Boeuf1__00011.fits');
I12=fitsread('Boeuf1__00012.fits');
I13=fitsread('Boeuf1__00013.fits');
I14=fitsread('Boeuf1__00014.fits');
I15=fitsread('Boeuf1__00015.fits');
I16=fitsread('Boeuf1__00016.fits');
I17=fitsread('Boeuf1__00017.fits');
I18=fitsread('Boeuf1__00018.fits');
I19=fitsread('Boeuf1__00019.fits');
I20=fitsread('Boeuf1__00020.fits');
I21=fitsread('Boeuf1__00021.fits');
I22=fitsread('Boeuf1__00022.fits');
I23=fitsread('Boeuf1__00023.fits');
%% Charger le ficher de donnees MatLab des images fits(70)+FV+DC
load('Boeuf1_data.mat')
%% normalisation
%sustraction du bruit de fond
FVc=FVm-DCm;

%I1c=I1-DCm; %file name%%%%
%I2c=I2-DCm; %file name%%%%
%I3c=I3-DCm; %file name%%%%
%I4c=I4-DCm; %file name%%%%
I5c=I5-DCm; %file name%%%%
I6c=I6-DCm; %file name%%%%
I7c=I7-DCm; %file name%%%%
I8c=I8-DCm; %file name%%%%
I9c=I9-DCm; %file name%%%%
I10c=I10-DCm; %file name%%%%
I11c=I11-DCm; %file name%%%%
I12c=I12-DCm; %file name%%%%
I13c=I13-DCm; %file name%%%%
I14c=I14-DCm; %file name%%%%
I15c=I15-DCm; %file name%%%%
I16c=I16-DCm; %file name%%%%
I17c=I17-DCm; %file name%%%%
I18c=I18-DCm; %file name%%%%
I19c=I19-DCm; %file name%%%%
I20c=I20-DCm; %file name%%%%
I21c=I21-DCm; %file name%%%%
I22c=I22-DCm; %file name%%%%
I23c=I23-DCm; %file name%%%%


%I1n=I1c./FVc;
%I2n=I2c./FVc;
%I3n=I3c./FVc;
%I4n=I4c./FVc;
I5n=I5c./FVc;
I6n=I6c./FVc;
I7n=I7c./FVc;
I8n=I8c./FVc;
I9n=I9c./FVc;
I10n=I10c./FVc;
I11n=I12c./FVc;
I12n=I12c./FVc;
I13n=I13c./FVc;
I14n=I14c./FVc;
I15n=I15c./FVc;
I16n=I16c./FVc;
I17n=I17c./FVc;
I18n=I18c./FVc;
I19n=I19c./FVc;
I20n=I20c./FVc;
I21n=I21c./FVc;
I22n=I22c./FVc;
I23n=I23c./FVc;

%% flip Verticale 
%I1r=flip(I1n,1);
%I2r=flip(I2n,1);
%I3r=flip(I3n,1);
%I4r=flip(I4n,1);
I5r=flip(I5n,1);
I6r=flip(I6n,1);
I7r=flip(I7n,1);
I8r=flip(I8n,1);
I9r=flip(I9n,1);
I10r=flip(I10n,1);
I11r=flip(I11n,1);
I12r=flip(I12n,1);
I13r=flip(I13n,1);
I14r=flip(I14n,1);
I15r=flip(I15n,1);
I16r=flip(I16n,1);
I17r=flip(I17n,1);
I18r=flip(I18n,1);
I19r=flip(I19n,1);
I20r=flip(I20n,1);
I21r=flip(I21n,1);
I22r=flip(I22n,1);
I23r=flip(I23n,1);
%% Test visualisation
figure, %figure 1
subplot(1,2,1), imshow(FVm) %images du DC, FV, Echantillon
title('FVm')

subplot(1,2,2), imshow(FVc)
title('FVc')

figure,
subplot(1,3,1), imshow(I5r) %file name%%%%
title('echantillon 60 deg')

subplot(1,3,2), imshow(I10r) %file name%%%%
title('echantillon 60 deg')

subplot(1,3,3), imshow(I23r) %file name%%%%
title('echantillon 60 deg')

%subplot(2,3,4), imshow(Ic) %file name%%%%
%title('echantillon 70 deg')
%subplot(2,3,5), imshow(In) %file name%%%%
%title('echantillon 90 deg')

%% saving files matrix
save('I1r.mat','I1r');
save('I70r.mat','I70r');