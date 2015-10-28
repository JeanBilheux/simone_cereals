function data_images = flip_images(data_images)
nbr_images=numel(data_images);

for i=1:nbr_images
data_images{i}=flip(data_images{i},1);
end
