error = im_out - im_in;
im = imread('sample.bmp');

hmo = heatmap(error);