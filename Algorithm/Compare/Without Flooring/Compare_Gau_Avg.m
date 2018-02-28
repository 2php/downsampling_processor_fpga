im = imread('sample.jpg');
im = uint8(im);
im_out_matlab = imresize(im, 0.5);

im_out_gau_skip = uint8(zeros(128,128));

gau = [1 2 1]'*[1 2 1]/16;

im_out_gau = imfilter(im, gau, 'replicate', 'same');

im_out_avg = uint8(zeros(128,128));

for row_i = 1:2: 256
    for col_i = 1 :2: 256
        
        mat = [im_out_gau(row_i,col_i) im_out_gau(row_i + 1, col_i) im_out_gau(row_i , col_i+1)  im_out_gau(row_i +1, col_i+1)];
        
        tot = bitshift(sum(sum(mat)), -2);
        
        row_o = (row_i + 1)/2;
        col_o = (col_i + 1)/2;
        
        im_out_avg(row_o, col_o) = tot;
    end
end

imshow(im_out_avg);


im_error = im_out_matlab - im_out_avg;
error_perc = 100*sqrt(sum(sum((im_error).^2)))/(128*128)