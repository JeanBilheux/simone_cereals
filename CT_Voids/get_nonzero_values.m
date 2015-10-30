function [total_pixels_mask, total_pixels] = get_nonzero_values(list_masks)

nbr_masks = numel(list_masks);
[height, width] = size(list_masks{1});
total_pixels = height*width*nbr_masks;

total_pixels_mask = 0;
for i=1:nbr_masks
    non_zero = nnz(list_masks{i});
    total_pixels_mask = total_pixels_mask + non_zero;
end

end