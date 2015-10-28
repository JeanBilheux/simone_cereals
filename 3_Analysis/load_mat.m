function full_file_name = load_mat()

path = './';

[filename, pathname, ~] = uigetfile({'*.mat', 'Matlab file (*.mat)'}, ...
    'Pick mat file', ...
    path);

full_file_name = fullfile(pathname, filename);

end