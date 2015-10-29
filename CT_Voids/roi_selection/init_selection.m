function init_selection(hObject)

handles = guidata(hObject);

ct_images = handles.ct_images;
image_1 = ct_images{1};

sz = size(image_1);

width = sz(2);
height = sz(1);

handles.images_width = width;
handles.images_height = height;

images_rectangle = {};
for i=1:handles.nbr_images
   tmp_rectangle = [1, 1, width, height];
   images_rectangle{i} = tmp_rectangle; %#ok<AGROW>
end

handles.images_rectangle = images_rectangle;
guidata(hObject, handles);

set(handles.slider_y1, 'min', 1);
set(handles.slider_y1, 'max', handles.images_height);
set(handles.slider_y1, 'value', handles.images_height);

set(handles.slider_x1, 'min', 1);
set(handles.slider_x1, 'max', handles.images_width);
set(handles.slider_x1, 'value', 1);

set(handles.edit_height, 'String', handles.images_height);
set(handles.edit_width, 'String', handles.images_width);

end