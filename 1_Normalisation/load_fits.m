function image_array = load_fits(filename, path)

    if isa(filename, 'char')
       filename = fullfile(path, filename);
       image_array{1} = fitsread(filename);
       return
    end
    
    nbr_file = size(filename, 2);
        
    image_array = {};
    for i = 1:nbr_file
        full_file_name = fullfile(path, filename{i});
        image = fitsread(full_file_name);
        image_array{i} = image; %#ok<AGROW>
    end    
    
    






