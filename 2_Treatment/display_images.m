function display_images(hObject)

handles = guidata(hObject);
data_images = handles.data_images;

imshow(data_images);

end