function [filenames, pathname] = getfile(title, path)

% load the data
[filenames, pathname, ~] = uigetfile({'*.fits;*.fit', 'FITS file (*.fits, *.fit)';...
    '*.tif;*.tiff', 'TIFF files (*.tif, *.tiff)'}, ...
        title, ...
        'MultiSelect', 'on', ...
        path);
    
    
 