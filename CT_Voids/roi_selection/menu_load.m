function menu_load(hObject)

handles = guidata(hObject);

% Select the list of CT files
disp('CT file selection');
title = 'Select CT files ...';
path = handles.path;
[ct_files, ct_path] = get_tif_file(title, path);

% provide default mat file name
[~, name, ~] = fileparts(ct_files{1});
nbr_file_selected = get(handles.text_total_slices, 'String');
mat_name = [name, '_', nbr_file_selected, 'files.mat'];
set(handles.mat_file_name, 'String', mat_name);

% load the CT files in memory
disp('Loading CT files ...');
ct_images = load_tif(ct_files, ct_path);

handles.ct_images = ct_images;
guidata(hObject, handles);

end