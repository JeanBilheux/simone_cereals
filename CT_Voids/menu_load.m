function menu_load(hObject)

handles = guidata(hObject);

% Select the list of CT files
disp('CT file selection');
title = 'Select CT files ...';
path = handles.path;
[ct_files, ct_path] = get_tif_file(title, path);

% load the CT files in memory
disp('Loading CT files ...');
ct_images = load_tif(ct_files, ct_path);

handles.ct_images = ct_images;
guidata(hObject, handles);

end