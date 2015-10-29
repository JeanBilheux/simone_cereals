function display_selected_image(hObject)

handles = guidata(hObject);

ct_images = handles.ct_images;
index_selected = int32(get(handles.slider_images, 'value'));

image_to_plot = ct_images{index_selected};

axes(handles.axes1);
imagesc(image_to_plot);

end