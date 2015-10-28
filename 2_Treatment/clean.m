function cleanup_images = clean(crop_images)

% keep only [0,1] range
nbr_images = numel(crop_images);

cleanup_images = {};
for i=1: nbr_images
    crop_image = crop_images{i};
    
    index_neg = crop_image < 0;
    crop_image(index_neg) = 0;
    index_pos = crop_image > 1;
    crop_image(index_pos) = 1;
    
    cleanup_images{i} = crop_image;
end

end