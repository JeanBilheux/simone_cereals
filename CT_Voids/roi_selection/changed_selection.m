function hObject = changed_selection(hObject)

handles = guidata(hObject);

slice_selected = int32(str2double(get(handles.slice_index, 'String')));
y1 = handles.images_height - int32(get(handles.slider_y1, 'value'));
x1 = int32(get(handles.slider_x1, 'value'));
height = int32(str2double(get(handles.edit_height, 'String')));
width = int32(str2double(get(handles.edit_width, 'String')));

image_width = handles.images_width;
width_error = 'off';
if width > image_width
   width_error = 'on'; 
end
if (width + x1) > image_width
    width_error = 'on';
end
set(handles.text_too_wide, 'visible', width_error);

image_height = handles.images_height;
height_error = 'off';
if height > image_height
   height_error = 'on'; 
end
if (height + y1) > image_height
    height_error = 'on';
end
set(handles.text_too_height, 'visible', height_error);

nbr_images = handles.nbr_images;

% x, y are slice dependent
images_rectangle = handles.images_rectangle;
for i=slice_selected:nbr_images
    slice_rectangle = [x1, y1, width, height];
    images_rectangle{i} = slice_rectangle;
end

% width and height are global
for i=1:nbr_images
   slice_rectangle = images_rectangle{i};
   images_rectangle{i} = [slice_rectangle(1), ...
       slice_rectangle(2), ...
       width, height];
end

handles.images_rectangle = images_rectangle;

guidata(hObject, handles);

end