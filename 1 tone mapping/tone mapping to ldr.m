%%

location = '/Users/jinchang/Documents/MATLAB/hdr/*.jpg';       %  folder in which your images exists
ds = imageDatastore(location)         %  Creates a datastore for all images in your folder
%%
i = 1;
while hasdata(ds) 
    img = read(ds) ;             % read image from datastore
    imwrite(img,sprintf('hdr%d.jpg',i))
    img_double = im2double(img);
    img_ldr = tonemap(img_double);
    imwrite(img_ldr,sprintf('ldr%d.jpg',i))
    i = i+1;
end









