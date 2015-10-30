%% Voids vs Non Voids pixel ratio

% This script will count the total number of pixels in the sample
% and the total number of pixels in the voids. To be able to compare
% the various samples together, the same volume will be used (rectangle
% column of width, height, nbr_slices

%% Select the mat file and load it
disp('loat mat file (created with roi_selection');
title = 'Select mat file ...';
[mat_file, ct_path] = get_mat_file(title, path);

% load mat file
load([ct_path, '/', mat_file]);

% cleanup workspace
clear ct_path mat_file title

%% select segmentation value (based on histogram)
nbr_row = 4;
nbr_column = 3;
nbr_images = numel(ct_images_cropped);
images = {ct_images_cropped{1}, ct_images_cropped{int32(nbr_images/2)}, ct_images_cropped{end}};
type = 'imshow';
preview_images_with_axis(nbr_row, nbr_column, 1, images, type, 'raw images cropped');
type = 'histogram';
preview_images_with_axis(nbr_row, nbr_column, 2, images, type, 'histograms');

%% define cut off (background from sample)
cut_off = 500; % using previous histogram, select an appropriate cut off value

background_only = segmentation_handler(ct_images_cropped, cut_off, 'keep_below');
sample_only = segmentation_handler(ct_images_cropped, cut_off, 'keep_above');
type = 'imshow';
preview_images_with_axis(nbr_row, nbr_column, 3, background_only, type, 'background only');
preview_images_with_axis(nbr_row, nbr_column, 4, sample_only, type, 'sample only');

%% calculate the total number of pixels in each region (background and sample) and ratio
[pixel_in_background, total_pixel] = get_nonzero_values(background_only);
[pixel_in_sample, total_pixel] = get_nonzero_values(sample_only);

% ratio of sample over background is
str = sprintf('Pixels sample / pixels background = %.2f', pixel_in_sample / pixel_in_background);
disp(str);
str = sprintf('%% of pixel in background: %.2f%%', (pixel_in_background / total_pixel)*100);
disp(str);
str = sprintf('%% of pixel in sample: %.2f%%', (pixel_in_sample / total_pixel)*100);
disp(str);


