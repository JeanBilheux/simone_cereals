function segmented_images = segmentation(data_images, step)

%keep specific ranges
nbr_images = numel(data_images);

segmented_images = {};

xmin = 0;
xmax = xmin + step;
index_loop = 1;

while (xmax <=1)
    
    mask_images = {};
    
    for i=1:nbr_images
        
        image = data_images{i};
        index_region = (image > xmin ) & (image < xmax);
        mask_images{i} = index_region; %#ok<AGROW>
        
    end
    
    segmented_images{index_loop} = mask_images; %#ok<AGROW>
    index_loop = index_loop + 1;
    
    xmin = xmin + step;
    xmax = xmin + step;
    
end

end