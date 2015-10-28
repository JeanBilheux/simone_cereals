function numerators = calculate_numerator(data_images, dc_mean)

nbr_images = numel(data_images);
numerators = {};

for i=1: nbr_images
    temp = data_images{i} - dc_mean;
    numerators{i} = temp; %#ok<AGROW>
end



