function set_slice_range(hObject, position)

handles = guidata(hObject);
value_slice_selected_str = get(handles.slice_index, 'String');
value_slice_selected = int32(str2double(value_slice_selected_str));
if strcmp(position, 'first')
    handles.first_slice = value_slice_selected;
    set(handles.text_first_slice, 'string', value_slice_selected_str);
else
    handles.last_slice = value_slice_selected;
     set(handles.text_last_slice, 'string', value_slice_selected_str);
end

guidata(hObject, handles);

%calculate total slices selected
total_slice = handles.last_slice - handles.first_slice + 1;
set(handles.text_total_slices, 'String', total_slice);

end