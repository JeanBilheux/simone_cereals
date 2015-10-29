function display_selection(hObject)

handles = guidata(hObject);

% retrieve values
slice_selected = int32(str2double(get(handles.slice_index, 'string')));
images_rectangle = handles.images_rectangle;

rectangle_selection = images_rectangle{slice_selected};

rectangle('position', rectangle_selection, ...
                            'lineWidth', 1, ...
                            'edgeColor', 'red');

end

