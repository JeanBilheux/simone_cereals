function display_selection(hObject)

handles = guidata(hObject);

% retrieve values
y1 = handles.images_height - get(handles.slider_y1, 'value');
x1 = get(handles.slider_x1, 'value');

width = int16(str2num(get(handles.edit_width, 'String')));
height = int16(str2num(get(handles.edit_height, 'String')));

rectangle('position', [x1, y1, width, height], ...
                            'lineWidth', 1, ...
                            'edgeColor', 'red');



end

