function preview_images(nbr_row, nbr_column, row_index, images, type)

if row_index == 1
    figure;
end

subplot(nbr_row, nbr_column, 3*(row_index-1) + 1)
if strcmp(type, 'imshow')
    imshow(images{1});
elseif strcmp(type, 'histogram')
    histogram(images{1});
end

subplot(nbr_row, nbr_column, 3*(row_index-1) + 2)
if strcmp(type, 'imshow')
    imshow(images{2});
elseif strcmp(type, 'histogram')
    histogram(images{2});
end

subplot(nbr_row, nbr_column, 3*(row_index-1) + 3)
if strcmp(type, 'imshow')
    imshow(images{3});
elseif strcmp(type, 'histogram')
    histogram(images{3});
end

drawnow;

end