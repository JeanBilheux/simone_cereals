function init_widgets(hObject)

handles = guidata(hObject);

ct_images = handles.ct_images;
nbr_images = numel(ct_images);

handles.last_slice = nbr_images;

handles.nbr_images = nbr_images;
guidata(hObject, handles);

set(handles.slider_images, 'min', 1);
set(handles.slider_images, 'max', nbr_images);
set(handles.slider_images, 'value', 1);

set(handles.text_last_slice, 'string', nbr_images);
set(handles.text_total_slices, 'string', nbr_images);

end
