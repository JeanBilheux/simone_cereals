%software neutron image treatment:
% 02_Pretraitements_v2: Constrast, filtering, cropping, contour

clc
clear
close all

full_file_name = load_mat();
load(full_file_name)

x_array = [882, 882, 896, 908, 916, 916, 926, 930, 930, 930, 930, 930, 930, 930, 930, 930, 930, 930, 930];
y = 164;
width = 1298;
height = 1960;

disp('Cropping...');
crop_images = crop_images(data_images_normalized, x_array, y, width, height);

% preview data
nbr_row = 4;
nbr_column = 3;
row_index = 1;
nbr_images = numel(crop_images);
images = {crop_images{1}, crop_images{int16(nbr_images/2)}, crop_images{end}};
type = 'imshow';
preview_images(nbr_row, nbr_column, row_index, images, type)

% cleanup
disp('Cleaning...');
cleanup_images = clean(crop_images);
images = {cleanup_images{1}, cleanup_images{int16(nbr_images/2)}, cleanup_images{end}};
type = 'histogram';
preview_images(nbr_row, nbr_column, 2, images, type)

% segmentation
xmin = 0.05;
xmax = 0.36;
disp('Segmenting...');
segmented_images = contrast_images(cleanup_images, xmin, xmax);
images = {segmented_images{1}, segmented_images{int16(nbr_images/2)}, segmented_images{end}};
type = 'imshow';
preview_images(nbr_row, nbr_column, 3, images, type)

%% Filtre median / enlevement des points blanches
%test
x=5;
y=5;
disp('Filtering...');
filtered_images = median_filter(segmented_images, x, y);
images = {filtered_images{1}, filtered_images{int16(nbr_images/2)}, filtered_images{end}};
type = 'imshow';
preview_images(nbr_row, nbr_column, 4, images, type)

%% saving files matrix
save('data_images_treated.mat', 'filtered_images');
