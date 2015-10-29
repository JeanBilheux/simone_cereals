function validate_as_last_slice(hObject)

handles = guidata(hObject);
value_slice = get(handles.slider_images,'value');
handles.last_slice = value_slice;

guidata(hObject, handles);

end