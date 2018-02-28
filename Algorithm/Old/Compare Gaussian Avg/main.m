factor = 2;

im = imread('sample.jpg');
im = uint8(im);
im = rgb2gray(im);

h_in = size(im,1);
h_out = floor(h_in/factor);

im_out = zeros(h_out,h_out);

%Algorithm Here;
im_out = avgAround(im, im_out, h_in, h_out, factor);
%Algorithm Ends

%Algorithm Here;
g_kernel = [1 2 1; 2 4 2; 1 2 1 ]/16;

im_gaussian = filter2(g_kernel, im, 'same');
im_out_gaussian = zeros(h_out,h_out);
im_out_gaussian = avgAround(im_gaussian, im_out_gaussian, h_in, h_out, factor);
%Algorithm Ends

im_out = uint8(im_out);

subplot(1,3,1);
imshow(im);
subplot(1,3,2);
imshow(uint8(im_out_gaussian));
subplot(1,3,3);
imshow(im_out);