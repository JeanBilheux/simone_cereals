%03_Contour

clc
clear
close all

% pick treated images
disp('Data Load...')
full_file_name = load_mat();
load(full_file_name)

nbr_row = 2;
nbr_column = 3;
nbr_images = numel(filtered_images);
images = {filtered_images{1}, filtered_images{int32(nbr_images/2)}, filtered_images{end}};
type = 'imshow';
%preview_images_with_axis(nbr_row, nbr_column, 1, images, type);
type = 'histogram';
%preview_images_with_axis(nbr_row, nbr_column, 2, images, type, [0, 0.99, 0, 0.5e5]);

%%
% specific segmentation
disp('Segmantation')
step = 0.1;
segmented_images = segmentation(filtered_images, step);

figure();
for i=1:10
    subplot(1,3,1);
    imshow(segmented_images{i}{1});
    str = sprintf('Image 1: interval %d', i);
    title(str);
    subplot(1,3,2);
    imshow(segmented_images{i}{10});
    str = sprintf('Image 10: interval %d', i);
    title(str);
    subplot(1,3,3);
    imshow(segmented_images{i}{19});
    str = sprintf('Image 19: interval %d', i);
    title(str);
end

% NonZero Values Count in Matrix
disp('Pixel Counting')
nbr_pixel_in_mask = {};
for i=1:10
    intensity_range = nonzero_values(segmented_images{i});
    nbr_pixel_in_mask{i} = intensity_range;
end

%% plot number of pixels in each region
figure();
plt = {};
for i=1:10;
    plt{i} = plot(1:19, nbr_pixel_in_mask{i});
    str = sprintf('%d',i);
    hold on;
end
legend([plt{1}, plt{2}], 'range 1','range 2');
