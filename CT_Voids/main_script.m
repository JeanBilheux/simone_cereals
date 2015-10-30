%% Voids vs Non Voids pixel ratio

% This script will count the total number of pixels in the sample
% and the total number of pixels in the voids. To be able to compare
% the various samples together, the same volume will be used (rectangle
% column of width, height, nbr_slices

% Select the list of CT files
disp('loat mat file (created with roi_selection');
title = 'Select mat file ...';
[mat_file, ct_path] = get_mat_file(title, path);

mat_file


% the rectangle selection needs to move as we go along the slices




