clc
clear
close all

load('data_images_treated.mat', 'filtered_images');

%% this is the code

% demo
SE = strel('disk',10, 0);
size_sample = [];
for i=1:19
    mask = filtered_images{i} < 1;
    image_dilate = imdilate(mask, SE);
    image_squeeze = squeeze(image_dilate);
    size_sample = [size_sample, nnz(image_squeeze)];
    
end

%% this is a plot
figure()
plot(1:19, size_sample);
title('Number of pixels in sample');
xlabel('sample number');
ylabel('Pixels counts');

    
    return

figure();
subplot(1,3,1);
mask_10 = filtered_images{10} < 1;
imshow(mask_10);

SE = strel('disk',10, 0);
image_dilate = imdilate(mask_10, SE);
subplot(1,3,2);
imshow(image_dilate);

image_squeeze = squeeze(image_dilate);
subplot(1,3,3);
imshow(image_squeeze);

disp(nnz(mask_10));
disp(nnz(image_squeeze));