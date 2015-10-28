%software Image Normalisation:

clc
clear
close all

b_test = true;  % true or false

path = '../';  % go up one level


% ---------------------------------

data_images = {};
data_images_normalized = {};
numerators = {};
dc_images = {};
fv_images = {};

disp('Data Loading...');
% retrieve data file names
title = 'Select Data ...'; 
[data_filenames, data_path_name] = getfile(title, path);
% load data files
data_images = load_fits(data_filenames, data_path_name);

% retrieve dc file names (DF)
title = 'Select DC ...';
[dc_filenames, dc_path_name] = getfile(title, path);
dc_images = load_fits(dc_filenames, dc_path_name);

% retrieve fv file names (OB)
title = 'Select FV ...';
[fv_filenames, fv_path_name] = getfile(title, path);
fv_images = load_fits(fv_filenames, fv_path_name);

fv_mean = image_mean(fv_images);
dc_mean = image_mean(dc_images);

%% normalisation
%sustraction du bruit de fond
disp('Numerators and Denominator Calculation...');
denominator = fv_mean - dc_mean;
numerators = calculate_numerator(data_images, dc_mean);

disp('Normalisation...');
data_images_normalized = normalized_images(numerators, denominator);

disp('Flipping...');
data_images_normalized = flip_images(data_images_normalized);

if b_test
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
end

%% saving files matrix
disp('Data Saving...');

save('data_images_normalized.mat', 'data_images_normalized');
