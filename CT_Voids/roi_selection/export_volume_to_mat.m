function export_volume_to_mat(hObject)

handles = guidata(hObject);

mat_file_name = get(handles.mat_file_name, 'String');

first_slice = handles.first_slice;
last_slice = handles.last_slice;
images_rectangle = handles.images_rectangle;

ct_images = handles.ct_images;
ct_images_cropped = {};
true_index_slice = 1;
for slice_index = first_slice: last_slice
    before_image = ct_images{slice_index};
    
    slice_rectangle = images_rectangle{slice_index};
    x = slice_rectangle(1);
    y = slice_rectangle(2);
    width = slice_rectangle(3);
    height = slice_rectangle(4);
    
    ct_images_cropped{true_index_slice} = before_image(y:y+height, x:x+width);
    true_index_slice = true_index_slice + 1;
    
end

save('mat_file_name', 'ct_images_cropped');

end