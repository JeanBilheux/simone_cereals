%% Voids vs Non Voids pixel ratio

% This script will count the total number of pixels in the sample
% and the total number of pixels in the voids. To be able to compare
% the various samples together, the same volume will be used (rectangle
% column of width, height, nbr_slices

height = 200; % in each slice, height of the selection
width = 200;  % in each slice, width of the selection
tall = 200; % how tall (in nbr of slices) is the selection 

path = '../../reconstructed';

% Select the list of CT files
disp('CT file selection');
title = 'Select CT files ...';
[ct_files, ct_path] = get_tif_file(title, path);

% load the CT files in memory
disp('Loading CT files ...');
ct_images = load_tif(ct_files, ct_path);

% the rectangle selection needs to move as we go along the slices




