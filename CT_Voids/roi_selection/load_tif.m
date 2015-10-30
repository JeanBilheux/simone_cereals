function ct_images = load_tif(ct_files, path)

if isa(ct_files, 'char')
    filename = fullfile(path, ct_files);
    ct_images{1} = imread(filename);
    return
end

nbr_file = size(ct_files, 2);
ct_images = {};
for i = 1:nbr_file
    full_file_name = fullfile(path, ct_files{i});
    image = imread(full_file_name);
    ct_images{i} = image ; %#ok<AGROW>
end

end