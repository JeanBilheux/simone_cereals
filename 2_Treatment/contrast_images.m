function data_images = contrast_images(data_images, xmin, xmax)

nbr_images=numel(data_images);
    
for i=1:nbr_images
    data_images{i} = imadjust(data_images{i},[xmin xmax],[0 1]);
end

