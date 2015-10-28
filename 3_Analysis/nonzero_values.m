function intensity_range = nonzero_values(data_images)

% amount of nonzero values
intensity_range = [];

nbr_images=numel(data_images);

for i=1: nbr_images
    int_range=nnz(data_images{i});
    intensity_range = [intensity_range, int_range];
end
end