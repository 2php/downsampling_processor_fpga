function array65 = imageRead()

im = imread('sample.jpg');
im = uint8(im);
im = rgb2gray(im);

array65 = im(:);

figure
imshow(im);

end

