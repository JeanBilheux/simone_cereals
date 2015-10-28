function init_widgets(hObject)

handles = guidata(hObject);

ct_images = handles.ct_images;
nbr_images = numel(ct_images);

set(hObject.slider_images, 'min', 1);
set(hObject.slider_images, 'max', nbr_images);

end
