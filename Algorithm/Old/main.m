factor = 2;

im = imread('sample.jpg');
im = uint8(im);
im = rgb2gray(im);

im_out = downBy2(im);

im_out = uint8(im_out);

subplot(1,2,1);
imshow(im);
subplot(1,2,2);
imshow(im_out);