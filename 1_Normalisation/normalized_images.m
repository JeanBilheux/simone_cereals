function normalized = normalized_images(nume, deno)

nbr_images = numel(nume);
normalized = {};
for i=1:nbr_images
   temp = nume{i} ./ deno;
   normalized{i} = temp; %#ok<AGROW>

end