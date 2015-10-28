function average_array = image_mean(list_images)

nbr_images = numel(list_images);

    if nbr_images > 1
 average_array = list_images{1};
        for i=2:nbr_images
            average_array = average_array + list_images{i};
        end
        average_array = average_array /nbr_images;
    else
       average_array = list_images{1};
    end