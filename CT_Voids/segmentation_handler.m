function mask_images = segmentation_handler(ct_images, cut_off, type)

mask_images = {};
nbr_images = numel(ct_images);
if strcmp(type, 'keep_below')
    for i=1:nbr_images
        index_region = ct_images{i} < cut_off;
        mask_images{i} = index_region; %#ok<AGROW>
    end
else
    for i=1:nbr_images
        index_region = ct_images{i} >= cut_off;
        mask_images{i} = index_region; %#ok<AGROW>
    end
end

end