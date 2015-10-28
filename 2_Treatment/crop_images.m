function data_images = crop_images(data_images, x_array, y, width, height)

nbr_images = numel(data_images);

for i=1:nbr_images
    data_images{i} = imcrop(data_images{i}, [x_array(i), y, width, height]);
end

end