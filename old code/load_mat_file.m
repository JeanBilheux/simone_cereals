function load_mat_file(hObject)

    handles = guidata(hObject);
    load('data_images_normalized.mat');
    
    nbr_images = numel(data_images_normalized); %#ok<USENS>
    
    if nbr_images > 1
        data_images = data_images_normalized{1};
        for i=2:nbr_images
            data_images = data_images + data_images_normalized{i};
        end
        data_images = data_images / nbr_images;
    else
        data_images = data_images_normalized{1}; %#ok<NASGU>
    end
    
    handles.data_images = data_images;
    guidata(hObject, handles);
    
end