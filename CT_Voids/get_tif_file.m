function [filenames, pathname] = get_tif_file(title, path)

% load the data
[filenames, pathname, ~] = uigetfile({'*.tif;*.tiff', 'TIFF files (*.tif, *.tiff)'}, ...
        title, ...
        'MultiSelect', 'on', ...
        path);
    
    
 