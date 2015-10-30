function [mat_file, path] = get_mat_file(title, path)

% retrieve name of file
[mat_file, path, ~] = uigetfile({'*.mat', 'MAT file (*.mat)'}, ...
    title, ....
    'MultiSelect', 'off', ...
    path);

end