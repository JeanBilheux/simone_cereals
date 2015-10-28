function data_images=median_filter(data_images, x, y)

nbr_images=numel(data_images);

for i=1:nbr_images
    data_images{i}=medfilt2(data_images{i},[x y]);
end

